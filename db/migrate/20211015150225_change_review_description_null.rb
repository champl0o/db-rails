class ChangeReviewDescriptionNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :reviews, :description, false
  end
end
