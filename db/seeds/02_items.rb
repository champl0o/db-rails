# frozen_string_literal: true

require 'faker'

User.all.each do |user|
  Item.create!(
    name: Faker::Beer.brand,
    owner: user
  )
end
