class Item < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :booking
  has_many :reviews, as: :reviewable
end