class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :instructions, null: false
      t.float :default_number_of_servings, null: false, default: 1.0

      t.timestamps
    end
  end
end
