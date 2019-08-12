require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get front_page" do
    get home_front_page_url
    assert_response :success
  end

  test "should get welcome" do
    get home_welcome_url
    assert_response :success
  end

end
