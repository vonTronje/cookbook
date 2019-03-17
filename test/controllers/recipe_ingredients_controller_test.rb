require 'test_helper'

class RecipeIngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipe_ingredients_path
    assert_response :success
  end

  test "should get show" do
    recipe_ingredient = recipe_ingredients(:one)
    get recipe_ingredients_path(recipe_ingredient)
    assert_response :success
  end

end
