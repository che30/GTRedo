class TransactionsController < ApplicationController
  
  def new
    @transaction = Transaction.new
  end

  def index
    @transactions = current_user.transactions.includes(:group).where.not(group_id: nil).order('created_at DESC')
  end
end
