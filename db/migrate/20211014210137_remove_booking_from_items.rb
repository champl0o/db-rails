# frozen_string_literal: true

class RemoveBookingFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :items, :booking, null: false, foreign_key: true
  end
end
