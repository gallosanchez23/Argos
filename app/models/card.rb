class Card < ApplicationRecord
  validates :stamp,
            :number,
            :status,
            :expiration_date,
            presence: true

  belongs_to :account

  enum status: [:active, :expired]
end
