FactoryBot.define do
  factory :card do
    expiration_date { FFaker::Time.date }
    number          { FFaker::Bank.card_number }
    stamp           { 1 }
    status          { 1 }
    account         { FactoryBot.create(:account) }
  end
end
