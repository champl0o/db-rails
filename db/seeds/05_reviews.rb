# frozen_string_literal: true

Review.create!(
  description: Faker::Books::Dune.quote,
  reviewable: Item.last
)
