FactoryGirl.define do
  factory :user do
    first_name "First"
    last_name "Last"
    sequence(:email) { |n| "user#{n}@example.com" }
    password "treehouse1"
    password_confirmation "treehouse1"
  end
end