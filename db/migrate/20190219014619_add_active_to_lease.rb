class AddActiveToLease < ActiveRecord::Migration[5.2]
  def change
    add_column :leases, :active, :boolean, default: false, null: false
  end
end
