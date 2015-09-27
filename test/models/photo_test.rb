require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  	
	def setup
		@photo = photos(:pic1)
	end

  	test "has a valid fixture" do 
		assert @photo.valid?
	end

	should validate_presence_of(:img)
	should validate_presence_of(:category)
	should validate_presence_of(:description)
	

end
