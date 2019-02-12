class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.string :address
      t.boolean :active, default: false, null: false
      t.integer :bedroom, default: 0
      t.integer :bathroom, default: 0
      t.boolean :is_tv
      t.boolean :is_air
      t.boolean :is_kitchen
      t.boolean :is_pool
      t.boolean :is_heating
      t.boolean :is_internet
      t.integer :size, default: 0
      t.decimal :price, precision: 8, scale: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
