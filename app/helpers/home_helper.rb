module HomeHelper
  def user_already_signed_in?
    'd-none' if current_user
  end
end
