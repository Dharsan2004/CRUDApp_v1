class ArticleController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    bookName = params[:bookName]
    author = params[:authorName]
    @article = Article.new(BookName:bookName,Author:author)
    @article.save

    redirect_to "/article/"

  end

end
