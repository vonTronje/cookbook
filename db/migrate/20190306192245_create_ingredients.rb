class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end

    add_column :ingredients, :default_unit, :unit
  end
end
