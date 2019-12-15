class AddColumnToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :address, :string, null: false
    add_reference :shops, :user, add_foreign_key: true
  end
end
