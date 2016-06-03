class ArticlesController < ApplicationController
  def index
  @articles = Article.page(params[:page]).per(5)
  end

  def show
  @article = Article.find_by_id(params[:id])
  @comments = @article.comments
  end

  def create
    Comment.create auteur: params[:auteur], content: params[:content], article_id: params[:article_id]
    redirect_to "/articles/#{params[:article_id]}"
  end
end
