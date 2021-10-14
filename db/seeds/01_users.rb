1.times do |i|
  User.create!(
    email: "user#{i}@db.com",
    password: '123456'
  )
end