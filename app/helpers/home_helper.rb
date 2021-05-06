module HomeHelper
  def user_already_signed_in?
    if current_user
      'd-none'
    end
  end
  
end
