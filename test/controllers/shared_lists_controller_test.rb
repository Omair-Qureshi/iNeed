require "test_helper"

class SharedListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shared_lists_index_url
    assert_response :success
  end
end
