class AddUserIdToParks < ActiveRecord::Migration[6.1]
  def change
    add_reference :parks, :user, null: false, foreign_key: true
  end
end
