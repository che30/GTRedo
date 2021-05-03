class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  has_many_attached :avatar,dependent: :destroy
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :icon, presence: true
end
