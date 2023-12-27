class ArticleController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    bookName = params[:bookName]
    author = params[:authorName]
    @article = Article.new(BookName:bookName,Author:author)

    if @article.save
        redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def message
    @msg = Message.getMessage
  end
end
