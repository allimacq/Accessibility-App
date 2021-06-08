class RemoveAccessibleFromParks < ActiveRecord::Migration[6.1]
  def change
    remove_column :parks, :accessible, :boolean
  end
end
