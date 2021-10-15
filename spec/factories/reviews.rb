# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    description { 'MyString' }
    reviewable { association :user }
    reviewable_type { 'MyString' }
  end
end
