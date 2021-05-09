class AddDescriptionToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :description, :text
  end
end
