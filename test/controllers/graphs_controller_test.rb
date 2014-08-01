require 'test_helper'

class GraphsControllerTest < ActionController::TestCase
  test "should get stock" do
    get :stock
    assert_response :success
  end

end
