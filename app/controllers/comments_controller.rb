class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.context = params[:context]
    @comment.user_id = session[:user_id]
    @comment.post_id = params[:post_id]
    if @comment.save
      respond_to do |format|
        format.html { redirect_to "/posts/#{params[:post_id]}"}
        format.js
      end
    end
  end
end
