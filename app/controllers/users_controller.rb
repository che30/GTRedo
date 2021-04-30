class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find_by(params[:email])
  end
end
