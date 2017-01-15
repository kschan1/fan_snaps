class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.context = params[:context]
    comment.user_id = session[:user_id]
    comment.post_id = params[:post_id]
    if comment.save
      redirect_to "/posts/#{params[:post_id]}"
    end
  end
end
