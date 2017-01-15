class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.description = params[:description]
    @post.image = params[:image]
    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      @errors = @post.errors.full_messages
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/posts'
  end
end
