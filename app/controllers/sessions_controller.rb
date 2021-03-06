class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/posts'
    else
      @error = 'Incorrect username or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
