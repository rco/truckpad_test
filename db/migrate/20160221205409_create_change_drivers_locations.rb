class CreateChangeDriversLocations < ActiveRecord::Migration
  def change
    change_column :drivers, :longitude, :float
    change_column :drivers, :latitude, :float
  end
end
