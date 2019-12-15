class CreateFlows < ActiveRecord::Migration[5.2]
  def change
    create_table :flows do |t|
      t.text :content, null: false
      t.string :picture
      t.references :recipe, foreign_key: true
      t.timestamps
    end
  end
end
