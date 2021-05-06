class HomeController < ApplicationController
  def homepage
    @user = User.new
    session[:http_referer_home] = request.env['HTTP_REFERER']
    
  end
end
