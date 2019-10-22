FactoryBot.define do
  factory :account do
    balance { 100.00 }
    bank    { FFaker::Bank.iban }
    number  { FFaker::Bank.card_number }
    type    { 1 }
    user    { FactoryBot.create(:user) }
  end
end
