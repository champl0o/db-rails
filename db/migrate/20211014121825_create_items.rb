# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.1] # :nodoc:
  def change
    create_table :items do |t|
      t.string :name
      t.references :owner, index: true, null: false, foreign_key: { to_table: :users }
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
