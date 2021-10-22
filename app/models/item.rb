# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :booking, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy

  validates :name, presence: true
end
