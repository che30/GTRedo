class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :icon, presence: true
end
