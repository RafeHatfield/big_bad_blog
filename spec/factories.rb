FactoryGirl.define do
  factory :user do
    name     "Test User"
    email    "test1@test.com"
    password "test"
    password_confirmation "test"
  end
end