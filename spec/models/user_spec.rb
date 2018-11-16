require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
  	it 'ensures first name presence' do
  		user = User.new(last_name: "Example Lastname", email: "user@example.com").save
  		expect(user).to eq(false)
  	end 
  	it 'ensures last name presence' do
  		user = User.new(first_name: "Example Firstname", email: "user@example.com").save
  		expect(user).to eq(false)
  	end 
  	  	it 'ensures email presence' do
  		user = User.new(first_name: "Example Firstname", last_name: "Example Lastname").save
  		expect(user).to eq(false)
  	end 
  	#   	it 'should save successfully' do
  	# 	user = User.new(first_name: "Example Firstname", last_name: "Example Lastname", email: "user@example.com").save
  	# 	expect(user).to eq(true)
  	# end 
  end 

  # context 'scope tests' do
  # end 
end
