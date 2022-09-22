# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    name { 'Test' }
    association :owner, factory: :user
  end

  trait :with_post do
    after(:create) do |item|
      create(:owner, items_id: [item.id])
    end
  end
end
