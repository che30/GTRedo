class ExternaltransactionsController < ApplicationController
  def external
    @transactions = current_user.transactions.includes(:group).where(group_id: nil).order('created_at DESC')
    session[:http_referer] = request.env['HTTP_REFERER']
  end
end
