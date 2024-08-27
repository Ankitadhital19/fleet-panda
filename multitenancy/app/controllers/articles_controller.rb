class ArticlesController < ApplicationController
  before_action :set_tenant
  before_action :set_article, only: [ :show, :edit, :update, :destroy ]


  def index
    @articles = @tenant.articles
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = @tenant.articles.new(article_params)
    @article.user = current_user

    if @article.save
      redirect_to [ @tenant, @article ], notice: "Article is added successfully"
    else
      render :new
    end
  end


  def update
    if @article.update(article_params)
      redirect_to [ @tenant, @article ], notice: "Article is updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
      redirect_to [ @tenant, @article ], notice: "Article is deleted successfully"
  end

  private
  def set_tenant
    @tenant = Tenant.find(params[:tenant_id])
  end

  def set_article
    @article = @tenant.articles.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
