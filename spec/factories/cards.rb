FactoryBot.define do
  factory :card do
    expiration_date { FFaker::Bank.card_expiry_date }
    number          { FFaker::Bank.card_number }
    stamp           { 1 }
    status          { 1 }
    account         { FFaker::IdentificationESCO.id }
  end
end
