FactoryGirl.define do 
  factory :owner do 
    sequence(:email) { |n| "text#{n}@text.com" }
    password "foobarrrrrrrr"
  end
end