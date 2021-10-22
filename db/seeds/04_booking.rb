# frozen_string_literal: true

User.all.each do |user|
  Booking.create!(
    user: user,
    item: Item.last
  )
end
