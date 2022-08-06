class Transaction < ApplicationRecord
    validates :name, presence: true
    validates :amount, numericality: { only_integer: false, greated_than_or_equal_to: 0 }
  
    has_many :groups, through: :transactions
    belongs_to :group
    belongs_to :user, class_name: 'User'
end
