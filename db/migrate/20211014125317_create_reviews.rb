class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :description
      t.bigint :reviewable_id
      t.string :reviewable_type

      t.timestamps
    end
  end
end
