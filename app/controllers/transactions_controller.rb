class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def index
    @transactions = current_user.transactions.includes(:group).where.not(group_id: nil).order('created_at DESC')
    session[:http_referer] = request.env["HTTP_REFERER"]
  end

  def show
    @transaction = Transaction.find_by(id: params[:id])
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    if @transaction.save
      flash[:notice] = 'transaction was succesffuly created'
      redirect_to @transaction
    else
      flash.now[:danger] = 'there are some errors with some fields'
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id,:description)
  end
end
