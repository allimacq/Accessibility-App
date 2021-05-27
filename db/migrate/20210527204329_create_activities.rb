class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.boolean :accessible?

      t.timestamps
    end
  end
end
