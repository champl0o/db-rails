# frozen_string_literal: true

User.all.each do |user|
  City.create!(
    name: Faker::Address.city,
    user: user
  )
end
