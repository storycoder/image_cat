require 'test_helper'

class PhotosTest < ActionDispatch::IntegrationTest
  test 'Index page shows all photos'  do 
  	pic1 = photos(:pic1)
  	pic2 = photos(:pic2)

  	visit photos_path

  	assert page.has_content?('Photos')

  	assert page.has_content?('pic1.img')
  	assert page.has_content?('pic1.category')
  	assert page.has_content?('pic1.description')

  	assert page.has_content?('pic2.img')
  	assert page.has_content?('pic2.category')
  	assert page.has_content?('pic2.description')
  end

end
