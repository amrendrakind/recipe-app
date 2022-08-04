require 'test_helper'

class RecipesFoodsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get recipes_foods_new_url
    assert_response :success
  end
end
