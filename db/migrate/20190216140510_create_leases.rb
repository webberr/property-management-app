class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
