class RemoveZipcodeFromCities < ActiveRecord::Migration[6.1]
  def change
    remove_column :cities, :zipcode, :integer
  end
end
