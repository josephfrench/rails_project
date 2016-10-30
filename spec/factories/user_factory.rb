FactoryGirl.define do 
  factory :user do
    sequence(:email) { |n| "user#{n}@123.com"}
    sequence(:last_name) { |n| "Doe#{n}" }
    password "123456"
    first_name "John"
    admin false
  end

  factory :admin, class: User do
    sequence(:email) { |n| "admin#{n}@123.com"}
    sequence(:last_name) { |n| "Admin#{n}" }
    password "123456"
    first_name "Joe"
    admin true
  end
end