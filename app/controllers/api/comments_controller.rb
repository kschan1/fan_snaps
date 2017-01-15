class Api::CommentsController < ApplicationController
  def index
  end

  def create
    comment = Comment.new
    comment.context = params[:context]
    comment.user_id = session[:user_id]
    comment.post_id = params[:post_id]
    if comment.save
      render json: {
        success: true,
        comment: comment
      }
    else
      render json: {
        success: false
      }
    end
  end
end
