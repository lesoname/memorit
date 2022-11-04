class ArticlesController < ApplicationController
  def index
    @q = Article.paginate(page: params[:page], per_page: 3).ransack(params[:q])
    @articles = @q.result(distinct: true)
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
    
    if @article.save
      redirect_to @article

    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
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
    @article = Article.friendly.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end

end
