# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :items, foreign_key: 'owner_id', inverse_of: 'owner', dependent: :destroy

  has_many :reviews, as: :reviewable, dependent: :destroy
end
