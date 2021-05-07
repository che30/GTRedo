module TransactionsHelper
  def default_transaction
  #   transaction =current_user.transactions.includes(:group).where.not(group_id: nil).order('created_at DESC').first
  #     if transactions.group.avatar.attached?
  #       'fa fa-group'
  #     else
  #       transaction.grou.avatar
  #     end
    
  # end
  'fa fa-group'
  end
  
  def tesmethod
    transaction =current_user.transactions.includes(:group).where.not(group_id: nil).order('created_at DESC').first
   
    if transaction && transaction.group.avatar.attached?
   'd-none'
   end
  end
  def check_image?(transaction)
    if transaction.group
      transaction.group.avatar
      else
        '<i class="fa fa-group">'
    end
    
  end
  def sum_amount(transactions)
    sum = 0
    transactions&.each { |t| sum += t.amount }
    sum
  end
end
