module UsersHelper
  def user_avatar
    'fa fa-user-circle '
  end

  def image_available?
    if current_user.avatar.attached?
      'd-block'
    else
      'd-none'
    end
  end

  def image_unavailable?
    if image_available? == 'd-block'
      'd-none'
    else
      'd-block'
    end
  end
end
