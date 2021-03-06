# frozen_string_literal: true

FactoryBot.define do
  factory :page do
    title { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
  end
end
