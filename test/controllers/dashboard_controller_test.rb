require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get companies list" do
    get "/"
    assert_response :success
    assert @response.body.to_s.include? "Dunder Mifflin"
    assert @response.body.to_s.include? "Sabre"
  end

  # List of test cases

  # Dashboard
  # filter_by_company_role
  # filter_by_user_role
  # reset table functionality

  # Company
  # company index
  # create company
  # show company
  # update company
  # delete company

  # User
  # user index
  # create user
  # show user
  # update user
  # delete user

end
