class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find_by(params[:email])
    session[:http_referer_show] = request.env['HTTP_REFERER']
  end
end
