# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :city
  has_many :bookings, dependent: :destroy
  has_many :items, foreign_key: 'owner_id', inverse_of: 'owner', dependent: :destroy
  has_many :booked_items, through: :bookings, source: :item, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy

  def item_reviewable?(item)
    bookings.exists?(item_id: item.id)
  end

  def owner_reviewable?(owner)
    booked_items.exists?(owner_id: owner.id)
  end
end
