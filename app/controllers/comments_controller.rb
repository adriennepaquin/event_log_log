class CommentsController < ApplicationController

    skip_before_action :verify_authenticity_token

    # GET comments by log_id
    def show
        comments = Comment.where(log_id: params[:id])
        render json: comments
    end

    # POST comment
    def create
        byebug
        comment = Comment.create(comment: params[:comment], user_id: params[:user_id], log_id: params[:log_id])
        render json: comment
    end

    # PATCH comment
    def update
        comment = Comment.find_by(id: params[:id])
        updated = comment.update(comment: params[:comment])
        render json: comment
    end

    # DESTROY comment by id
    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json: comment
    end

end
