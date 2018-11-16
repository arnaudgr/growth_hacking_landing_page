require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
    @user = User.new(first_name: "Example Name", last_name: "Example Lastname", email: "user@example.com", city: "City Exp", country: "Country Exp")
  end

  #A test for an initially valid user.
	# test "should be valid" do
	# assert @user.valid?
	# end	
end
