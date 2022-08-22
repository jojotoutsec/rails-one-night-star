require "test_helper"

class ServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_index_url
    assert_response :success
  end

  test "should get new" do
    get service_new_url
    assert_response :success
  end

  test "should get create" do
    get service_create_url
    assert_response :success
  end
end
