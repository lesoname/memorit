class ArtigosController < ApplicationController
  def index
    @artigos = Artigo.all
  end

  def show
    @artigo = Artigo.find(params[:id])
  end

  def new
    @artigo = Artigo.new
  end
  
  #definindo a criação do post
  def create
    @artigo = Artigo.new(artigo_params)
    
    if @artigo.save
      redirect_to @artigo

    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def artigo_params
      params.require(:artigo).permit(:título, :conteúdo,)
    end
  
end
