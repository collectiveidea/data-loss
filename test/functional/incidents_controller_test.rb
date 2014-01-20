require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, :id => 'fake'
    assert_response :success
  end

end
