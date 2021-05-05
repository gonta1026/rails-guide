class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    # binding.pry
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    Article.transaction do
      Comment.transaction do
        @article = Article.find(params[:id])
        @article.update(is_deleted: true)
        @article.comments.each do |comment|
          comment.update(is_deleted: true)
        end
      end
    end
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
