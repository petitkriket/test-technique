# frozen_string_literal: true

FactoryBot.define do
  factory :shop do
    name { Faker::Restaurant.name }
    slug { name.parameterize }
    available_on { Faker::Time.backward(days: 14, period: :evening) }
    created_at { Faker::Time.between(from: 32.weeks.ago, to: available_on) }
    updated_at { Time.now }

    # additional traits
    trait :unavailable do
      available_on { Faker::Time.forward(days: 62, period: :evening) }
    end

    # create a shop products
    after :create do |shop|
      create_list :product, rand(12..24), shop: shop
    end
  end
end
