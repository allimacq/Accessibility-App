class AddZipcodeToCities < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :zipcode, :string
  end
end
