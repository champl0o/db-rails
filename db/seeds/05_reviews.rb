# frozen_string_literal: true

User.all.each do |_user|
  Review.create!(
    description: Faker::Books::Dune.quote,
    reviewable: Item.last
  )
end
