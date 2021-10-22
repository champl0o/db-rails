# frozen_string_literal: true

2.times do
  City.create!(
    name: Faker::Address.city
  )
end
