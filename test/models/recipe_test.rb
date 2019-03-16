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

end
