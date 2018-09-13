require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get education" do
    get pages_education_url
    assert_response :success
  end

  test "should get info" do
    get pages_info_url
    assert_response :success
  end

  test "should get involve" do
    get pages_involve_url
    assert_response :success
  end

end
