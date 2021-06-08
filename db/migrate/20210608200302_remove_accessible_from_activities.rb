class RemoveAccessibleFromActivities < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :accessible, :boolean
  end
end
