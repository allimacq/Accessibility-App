class RemoveDescriptionAndRatingFromActivities < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :description, :text
    remove_column :activities, :rating, :integer
  end
end
