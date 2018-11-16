require 'test_helper'

class ControllerControllerTest < ActionDispatch::IntegrationTest
    test "should get general" do
	    get general_path
	    assert_response :success
	end 
end
