require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get :index" do
    get hello_:index_url
    assert_response :success
  end

end
