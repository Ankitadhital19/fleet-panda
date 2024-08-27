class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [ :my_articles ]
  def index
    @articles =Article.all
  end

  def my_articles
    @articles = current_user.articles
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status, :user_id)
  end
end
