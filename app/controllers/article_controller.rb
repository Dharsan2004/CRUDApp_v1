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

  def edit
    @article = Article.find(params[:id])
  end

  def update
    book = params[:article][:bookName]
    author = params[:article][:authorName]
    id = params[:id]

    @article = Article.find(id)

    if @article.update(BookName:book,Author:author)
      redirect_to "/article"
    else
      render :edit, status: :unprocessable_entity
    end



  end

  def create
    bookName = params[:bookName]
    author = params[:authorName]
    @article = Article.new(BookName:bookName,Author:author)

    if @article.save
        redirect_to article_path(@article) #get req for Show
    else
      render :new, status: :unprocessable_entity
    end

  end

  def message
    @msg = Message.getMessage
  end
end
