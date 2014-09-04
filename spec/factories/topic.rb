FactoryGirl.define do
  factory :topic do
    title Faker::Lorem.sentence(3)
    description Faker::Lorem.sentence(20)
  end
end
