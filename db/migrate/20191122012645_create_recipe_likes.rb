class CreateRecipeLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_likes do |t|
      t.references :recipe, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
