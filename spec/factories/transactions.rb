FactoryBot.define do
  factory :transaction do
    description { FFaker::Book.description }
    quantity    { 100.00 }
    type        { 1 }
    datetime    { FFaker::Time.datetime }
    user_id     { FFaker::IdentificationESCO.id }
    account_id  { FFaker::IdentificationESCO.id }
    currency_id { FFaker::IdentificationESCO.id }
  end
end
