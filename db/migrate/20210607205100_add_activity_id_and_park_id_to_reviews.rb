class AddActivityIdAndParkIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :activity, null: false, foreign_key: true
    add_reference :reviews, :park, null: false, foreign_key: true
  end
end
