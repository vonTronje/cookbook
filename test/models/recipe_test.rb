require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "saves a recipe" do
    recipe = Recipe.new(name: 'test', instructions: 'test')
    assert recipe.save
  end

  test "does not save recipe without a name" do
    recipe = Recipe.new(instructions: 'test')
    assert_not recipe.save
  end

  test "does not save recipe without instructions" do
    recipe = Recipe.new(name: 'test')
    assert_not recipe.save
  end

  test "adds an ingredient" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:flour)
    recipe.add_ingredient(ingredient: ingredient, quantity: 400, unit: 'g')
    assert_equal recipe.recipe_ingredients.first.ingredient_id, ingredient.id
  end

  test "does not add an ingredient without ingredient" do
    recipe = recipes(:pancakes)
    assert_raises ArgumentError do
      recipe.add_ingredient(quantity: 400, unit: 'g')
    end
  end

  test "does not add an ingredient without quantity" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:flour)
    assert_raises ArgumentError do
      recipe.add_ingredient(ingredient: ingredient, unit: 'g')
    end
  end

  test "does not add an ingredient without unit" do
    recipe = recipes(:pancakes)
    ingredient = ingredients(:flour)
    assert_raises ArgumentError do
      recipe.add_ingredient(ingredient: ingredient, quantity: 400)
    end
  end

end
