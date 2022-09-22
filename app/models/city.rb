# frozen_string_literal: true

class City < ApplicationRecord # :nodoc:
  has_many :users, dependent: :destroy
  has_many :items, through: :users

  validates :name, presence: true
end
