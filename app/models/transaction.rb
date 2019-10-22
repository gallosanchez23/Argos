class Transaction < ApplicationRecord
  validates :type,
            :datetime,
            :quantity,
            presence: true

  belongs_to :account
  belongs_to :currency

  enum type: [:payment, :purchase, :loan]
end
