# frozen_string_literal: true

FactoryBot.define do
  factory :taxon do
    name { Faker::Restaurant.unique.type }
    created_at { Faker::Time.backward(days: 14, period: :evening) }
    updated_at { Time.now }
  end
end
