# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    name { 'Test' }
    owner factory: :user
  end
end
