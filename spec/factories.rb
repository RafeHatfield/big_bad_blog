FactoryGirl.define do
  factory :user do
    name     "Test User"
    email    "test1@test.com"	
  end

  factory :article do
    title "The Title"
    body "Lorem ipsum"
    user
  end
end
