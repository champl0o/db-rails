# frozen_string_literal: true

5.times do |i|
  User.create!(
    email: "user#{i}@db.com",
    password: '123456',
    city: City.all.sample
  )
end
