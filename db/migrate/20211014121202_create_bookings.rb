# frozen_string_literal: true

class CreateBookings < ActiveRecord::Migration[6.1] # :nodoc:
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
