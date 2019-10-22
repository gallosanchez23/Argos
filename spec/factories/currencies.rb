FactoryBot.define do
  factory :currency do
    value { 19.34 }
    code  { FFaker::Currency.code }
  end
end
