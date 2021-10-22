# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :items, foreign_key: 'owner_id', inverse_of: 'owner', dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy

  def item_reviewable?(item)
    bookings.where('item_id = ?', item.id) ? true : false
  end

  def owner_reviewable?(owner)
    booking_items.where('owner_id = ?', owner.id) ? true : false
  end

  private

  def booking_items
    items = []
    bookings.each do |booking|
      items.append(booking.item)
    end
    items
  end
end
