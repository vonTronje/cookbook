require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingredients_path
    assert_response :success
  end

  test "should get show" do
    ingredient = ingredients(:flour)
    get ingredients_path(ingredient)
    assert_response :success
  end

end
