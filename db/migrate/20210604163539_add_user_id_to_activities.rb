class AddUserIdToActivities < ActiveRecord::Migration[6.1]
  def change
    add_reference :activities, :users, null: false, foreign_key: true
  end
end
