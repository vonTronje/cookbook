require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "saves an ingredient" do
    ingredient = Ingredient.new(name: 'Test Ingredient')
    assert ingredient.save
  end

  test "does not save a ingredient without a name" do
    ingredient = Ingredient.new
    assert_not ingredient.save
  end

  test "saves an ingredient with a valid default_unit" do
    ingredient = Ingredient.new(name: 'Test Ingredient', default_unit: 'kg')
    assert ingredient.save
  end

  test "does not save an ingredient with an invalid default_unit" do
    ingredient = Ingredient.new(name: 'Test Ingredient', default_unit: 'cm')
    assert_not ingredient.save
  end
end
