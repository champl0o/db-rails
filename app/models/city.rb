# frozen_string_literal: true

class City < ApplicationRecord # :nodoc:
  has_many :users, dependent: :destroy

  validates :name, presence: true

  def items
    Item.joins("INNER JOIN users ON users.id = items.owner_id WHERE users.city_id = #{id}")
  end
end
