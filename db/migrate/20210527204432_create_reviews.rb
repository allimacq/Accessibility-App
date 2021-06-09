class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :review
      t.integer :rating
      t.boolean :accessible
      t.belongs_to :activity
      t.belongs_to :park
      t.belongs_to :user

      t.timestamps
    end
  end
end
