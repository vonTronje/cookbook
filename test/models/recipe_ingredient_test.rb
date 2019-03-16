require 'test_helper'

class RecipeIngredientTest < ActiveSupport::TestCase
  test "saves a recipe_ingredient" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:milk)
    recipe_ingredient = RecipeIngredient.new(recipe: recipe,
                                             ingredient: ingredient,
                                             quantity: 1,
                                             unit: 'l')
    assert recipe_ingredient.save
  end

  test "does not save a recipe_ingredient without a recipe" do
    ingredient = ingredients(:milk)
    recipe_ingredient =
      RecipeIngredient.new(ingredient: ingredient, quantity: 1, unit: 'l')
    assert_not recipe_ingredient.save
  end

  test "does not save a recipe_ingredient without an ingredient" do
    recipe = recipes(:pancakes)
    recipe_ingredient =
      RecipeIngredient.new(recipe: recipe, quantity: 1, unit: 'l')
    assert_not recipe_ingredient.save
  end

  test "does not save a recipe_ingredient without a quantity" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:milk)
    recipe_ingredient =
      RecipeIngredient.new(recipe: recipe, ingredient: ingredient, unit: 'l')
    assert_not recipe_ingredient.save
  end

  test "does not save a recipe_ingredient without a unit" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:milk)
    recipe_ingredient =
      RecipeIngredient.new(recipe: recipe, ingredient: ingredient, quantity: 1)
    assert_not recipe_ingredient.save
  end

  test "does not save an recipe_ingredient with an invalid unit" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:milk)
    recipe_ingredient = RecipeIngredient.new(recipe: recipe,
                                             ingredient: ingredient,
                                             quantity: 1,
                                             unit: 'cm')
    assert_not recipe_ingredient.save
  end
end
