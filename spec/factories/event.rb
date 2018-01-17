FactoryBot.define do
  factory :room do
    name                 "evento_test"
    description          { Faker::Lorem.sentence(40) }
    capacity             55
    location             { Faker::Address.city }
    price                10.0
    #includes_food        { Faker::Lorem.words(3).join(' ') }


    includes_food        true
    includes_drinks      false
    starts_at            Time.now
    ends_at              2.days.from_now
    active               true

    user                 { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
