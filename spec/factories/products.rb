# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Food.ingredient }
    description { Faker::Food.description }
    price { Faker::Number.between(from: 1, to: 128) }
    shop
    created_at { Faker::Time.backward(days: 14, period: :evening) }
    updated_at { Time.now }
  end
end
