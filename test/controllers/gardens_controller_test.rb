require "test_helper"

class GardensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gardens_index_url
    assert_response :success
  end

  test "should get new" do
    get gardens_new_url
    assert_response :success
  end

  test "should get create" do
    get gardens_create_url
    assert_response :success
  end

  test "should get show" do
    get gardens_show_url
    assert_response :success
  end
end
