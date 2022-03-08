require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test 'should get index' do
    get recipes_url
    assert_response :success
  end

  test 'should show recipe' do
    get recipe_url(@recipe)
    assert_response :success
  end

  test 'should get edit' do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test 'should destroy recipe' do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
