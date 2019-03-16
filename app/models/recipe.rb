class Recipe < ApplicationRecord
  has_many :recipe_ingredients

  validates :name, presence: true
  validates :instructions, presence: true

  def add_ingredient(ingredient:, quantity:, unit:)
    recipe_ingredient = RecipeIngredient.new(ingredient: ingredient,
                                             quantity: quantity,
                                             unit: unit)
    recipe_ingredients << recipe_ingredient
  end
end
