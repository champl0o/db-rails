# frozen_string_literal: true

class CreateCities < ActiveRecord::Migration[6.1] # :nodoc:
  def change
    create_table :cities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end