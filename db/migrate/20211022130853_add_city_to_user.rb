# frozen_string_literal: true

class AddCityToUser < ActiveRecord::Migration[6.1] # :nodoc:
  def change
    # rubocop:disable  Rails/NotNullColumn
    add_reference :users, :city, null: false, foreign_key: true
    # rubocop:enable  Rails/NotNullColumn
  end
end
