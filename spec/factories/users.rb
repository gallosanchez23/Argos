FactoryBot.define do
  factory :user do
    username { FFaker::Internet.user_name }
    password { FFaker::Internet.password }
    nickname { FFaker::NameCS.first_name }
  end
end
