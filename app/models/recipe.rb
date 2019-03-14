class Recipe < ApplicationRecord
  has_many :recipe_ingredients

  def add_ingredient(ingredient:, quantity:, unit:)
    recipe_ingredient = RecipeIngredient.new(ingredient: ingredient,
                                             quantity: quantity,
                                             unit: unit)
    recipe_ingredients << recipe_ingredient
  end
end
