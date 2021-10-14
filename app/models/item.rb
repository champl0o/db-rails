class Item < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  has_many :reviews, as: :reviewable
end
