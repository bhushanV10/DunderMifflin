require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get users list" do
    get "/users"
    assert_response :success
    assert @response.body.to_s.include? "Jim Halpert"
    assert @response.body.to_s.include? "Michael Scott"
  end
end
