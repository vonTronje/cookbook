class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true
      t.integer :quantity, null: false
      t.timestamps
    end

    add_column :recipe_ingredients, :unit, :unit
  end
end
