# frozen_string_literal: true

class City < ApplicationRecord # :nodoc:
  belongs_to :user

  validates :name, presence: true

  delegate :items, to: :user, prefix: true

  def items_reviews
    # have to read about that
    user_items.index_with(&:reviews)
  end
end
