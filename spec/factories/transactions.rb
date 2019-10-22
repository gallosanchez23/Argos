FactoryBot.define do
  factory :transaction do
    description { FFaker::Book.description }
    quantity    { 100.00 }
    type        { 1 }
    datetime    { FFaker::Time.datetime }
    account		  { FactoryBot.create(:account) }
    currency		{ FactoryBot.create(:currency) }
  end
end
