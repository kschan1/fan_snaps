class UsersController < ApplicationController
  def new
  end

  def create
    new_user = User.new
    new_user.email = params[:email].downcase
    new_user.username = params[:username]
    new_user.password = params[:password]
    if new_user.save
      sessions[:user_id] = new_user.id
      redirect_to '/'
    else
      @errors = new_user.errors.full_messages
      render :new
    end
  end
end
