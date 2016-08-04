FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@email.com.br" }
    password '12345678'
  end
end
