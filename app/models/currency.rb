class Currency < ApplicationRecord
  validates :code,
          	:value,
          	presence: true

  validates :code,
          	uniqueness: true

  has_many :transactions
end
