require 'test_helper'

class PagesControllerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get equipos" do
    get :equipos
    assert_response :success
  end

end
