class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :cpf
      t.string :truck_type
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps null: false
    end
  end
end
