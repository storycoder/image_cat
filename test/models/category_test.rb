require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
  	@category = categories(:cat1)
  end

  should validate_presence_of(:name)

end
