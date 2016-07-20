class AddPriceToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :price, :integer
  end
end
