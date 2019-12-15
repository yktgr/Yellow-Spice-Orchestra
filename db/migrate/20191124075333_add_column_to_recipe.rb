class AddColumnToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :shop, add_foreign_key: true, null: false
  end
end
