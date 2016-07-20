class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage
      t.string :color
      t.string :style
      t.integer :number_of_doors
      t.string :trans

      t.timestamps null: false
    end
  end
end
