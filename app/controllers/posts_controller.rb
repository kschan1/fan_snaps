class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.description = params[:description]
    post.image = params[:image]
    post.user_id = session[:user_id]
    if post.save
      redirect_to '/posts'
    else
      @errors = post.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
