module UsersHelper
  def user_avatar
    'fa fa-user-circle'
  end

  def image_available?
    if current_user.avatar
      'd-none'
    else
      'd-block'
    end
  end

end
