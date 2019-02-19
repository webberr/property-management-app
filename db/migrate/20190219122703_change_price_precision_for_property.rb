class ChangePricePrecisionForProperty < ActiveRecord::Migration[5.2]
  def change
  	change_column :properties, :price, :decimal, precision: 15, scale: 2
  end
end
