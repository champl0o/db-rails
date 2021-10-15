# frozen_string_literal: true

class AddItemToBookings < ActiveRecord::Migration[6.1]
  def change
    # rubocop:disable  Rails/NotNullColumn
    add_reference :bookings, :item, foreign_key: true, null: false
    # rubocop:enable Rails/NotNullColumn
  end
end
