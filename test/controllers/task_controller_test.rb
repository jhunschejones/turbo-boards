require "test_helper"

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get task_update_url
    assert_response :success
  end
end
