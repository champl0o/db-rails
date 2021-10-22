# frozen_string_literal: true

class ChangeReviewDescriptionNull < ActiveRecord::Migration[6.1] # :nodoc:
  def change
    change_column_null :reviews, :description, false
  end
end
