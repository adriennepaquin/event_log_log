class CommentsController < ApplicationController

    skip_before_action :verify_authenticity_token

    #GET comments by log_id
    def show
        byebug
        comments = Comment.where(log_id: params[:id])
        render json: comments
    end

end
