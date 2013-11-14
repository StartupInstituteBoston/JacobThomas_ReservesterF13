FactoryGirl.define do
  factory :reservation do
    sequence (:email) { |n| "email#{n}@email.com" }
    sequence (:datetime) { |n| "11111111111111#{n}" }
    sequence (:message) { |n| "This is post number #{n}" }

    restaurant_id 1

  end

end