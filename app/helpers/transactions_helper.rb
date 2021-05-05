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
   if transaction.group.avatar.attached?
   'd-none'
   end
  end
end
