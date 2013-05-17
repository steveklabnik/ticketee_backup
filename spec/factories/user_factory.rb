
FactoryGirl.define do
  sequence(:email) {|n| "user#{n}@example.com" }

  factory :user do
    name "username"
    email { generate(:email) }
    password "hunter2"

    factory :admin_user do
      admin true
    end
  end
end
