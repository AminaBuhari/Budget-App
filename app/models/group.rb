class Group < ApplicationRecord
    has_one_attached :image

    validates :name, presence: true
    validates :image, presence: true
  
    has_many :transactions, dependent: :delete_all
    belongs_to :user, class_name: 'User'
  
    def transaction_count
      transactions.size
    end
  
    def transaction_sum
      transactions.sum(:amount)
    end
end

