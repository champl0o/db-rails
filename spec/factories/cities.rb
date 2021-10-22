# frozen_string_literal: true

FactoryBot.define do
  factory :city do
    user
    name { 'TestCity' }
  end
end
