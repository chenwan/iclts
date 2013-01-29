require 'test_helper'

class ShownewsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get onenews" do
    get :onenews
    assert_response :success
  end

end
