class Group < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :image, presence: true

  has_many :transactionss, dependent: :delete_all
  belongs_to :user, class_name: 'User'

  def transaction_count
    transactions.size
  end

  def transaction_sum
    transaction.sum(:amount)
  end
end
