# frozen_string_literal: true

City.all.each do |i|
  User.create!(
    email: "user#{i}@db.com",
    password: '123456',
    city: City.last
  )
end
