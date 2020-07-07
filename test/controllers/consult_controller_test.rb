require 'test_helper'

class ConsultControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get consult_show_url
    assert_response :success
  end

  test "should get new" do
    get consult_new_url
    assert_response :success
  end

  test "should get create" do
    get consult_create_url
    assert_response :success
  end

  test "should get edit" do
    get consult_edit_url
    assert_response :success
  end

  test "should get update" do
    get consult_update_url
    assert_response :success
  end

  test "should get destroy" do
    get consult_destroy_url
    assert_response :success
  end

end
