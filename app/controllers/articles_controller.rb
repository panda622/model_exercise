class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    #@article = Article.find(params[:id])
    @article = Article.find(params[:id])
    #@article = @article.get_content(params[:id])
    @pictures = @article.pictures.order(:position)
    #@texts = @article.texts.order(:position)
  end
end