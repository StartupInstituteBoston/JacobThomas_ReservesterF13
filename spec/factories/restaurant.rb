FactoryGirl.define do 
  factory :restaurant do 
    name "TestBistro"
    description "First Restaurant"
    address "1 Cambridge Center Cambridge MA"
    phone "0000000000"

    created_at { Time.now }
  end
end