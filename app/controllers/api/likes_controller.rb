class Api::LikesController < ApplicationController
  def create
    like = Like.new
    like.post_id = params[:id]
    like.user_id = session[:user_id]
    like.save
    render json: {
      likes_count: Post.find(like.post_id).likes.count
    }
  end
end
