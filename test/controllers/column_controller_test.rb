require "test_helper"

class ColumnControllerTest < ActionDispatch::IntegrationTest
  test "should get sort" do
    get column_sort_url
    assert_response :success
  end
end
