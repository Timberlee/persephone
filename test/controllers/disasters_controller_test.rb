require 'test_helper'

class DisastersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get disasters_new_url
    assert_response :success
  end

  test "should get edit" do
    get disasters_edit_url
    assert_response :success
  end

  test "should get index" do
    get disasters_index_url
    assert_response :success
  end

  test "should get show" do
    get disasters_show_url
    assert_response :success
  end

end
