require 'test_helper'

class CryptoControllerTest < ActionController::TestCase
  test "should get encode" do
    get :encode
    assert_response :success
  end

  test "should get decode" do
    get :decode
    assert_response :success
  end

end
