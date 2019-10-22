class Account < ApplicationRecord
  validates :bank,
          	:type,
          	:balance,
          	presence: true

  has_many :cards
  has_many :transactions

  belongs_to :user

  enum type: [:debit, :credit, :cash]
end
