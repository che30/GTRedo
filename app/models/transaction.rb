class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :group, optional: true
  validates :name, presence: true
  validates :amount, presence: true
  validates :description, presence: true
end
