require 'test_helper'

class GoodbyeControllerTest < ActionController::TestCase
  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
