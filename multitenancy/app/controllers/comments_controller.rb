class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_organization
    before_action :set_comment

    def new
    end

    def edit
    end

    def show
    end

    def create
      @article = @organization.articles.find(params[:article_id])
      @comment = @article.comments.create(comment_params.merge({ tenant_id: @organization.id }))
      if @comment.save
        redirect_to tenant_article_path(id: @article.id, tenant_id: @organization.id), notice: "Comment was successfully added."
      else
        render @article, alert: "Failed to add comment."
      end
    end

    def update
    end

    private

    def set_organization
      @organization = Tenant.find_by(id: params[:tenant_id])
    end


    def comment_params
      params.permit(:content)
    end
end
