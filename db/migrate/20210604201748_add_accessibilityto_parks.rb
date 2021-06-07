class AddAccessibilitytoParks < ActiveRecord::Migration[6.1]
  def change
    add_column :parks, :accessible, :boolean
  end
end
