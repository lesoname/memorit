class ArticlesController < ApplicationController
  def index
    if User.all.empty?
      redirect_to new_user_registration_path
    else
      @q = Article.paginate(page: params[:page], per_page: 3).ransack(params[:q])
      @articles = @q.result(distinct: true)
    end
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

  def new
    if current_user
      @article = Article.new

    else
      redirect_to root_path
    end
    
  end
  
  #def post creation
  def create
    @article = Article.friendly.new(article_params)
    @article.user = current_user
    
    if @article.save
      redirect_to @article

    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    if current_user
      @article = Article.friendly.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update
    @article = Article.friendly.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    if current_user
      @article = Article.friendly.find(params[:id])
      @article.destroy
      redirect_to root_path, status: :see_other
    else
      redirect_to root_path, status: :see_other
    end
    

  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end

end
