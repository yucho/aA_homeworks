class UsersController < ApplicationController
  def index

  end

  def create
    @user = User.new(user_params)
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
