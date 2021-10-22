# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :city
  has_many :bookings, dependent: :destroy
  has_many :items, foreign_key: 'owner_id', inverse_of: 'owner', dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy

  def item_reviewable?(item)
    bookings.where('item_id = ?', item.id) ? true : false
  end

  def owner_reviewable?(owner)
    items.where('owner_id = ?', owner.id) ? true : false
  end

  private

  def items
    Item.joins("INNER JOIN bookings ON bookings.user_id = items.owner_id WHERE bookings.user_id = #{id}")
  end
end
