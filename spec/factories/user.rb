FactoryGirl.define do 
  factory :user do 
    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password "foobarfoo"
    password_confirmation "foobarfoo"
    
  end
end