class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :avatar,presence: true

end
