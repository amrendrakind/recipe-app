require "test_helper"

class PublicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publics_index_url
    assert_response :success
  end
end
