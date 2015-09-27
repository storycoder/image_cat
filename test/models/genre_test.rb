require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  
  def setup
  	@genre = genres(:type1)
  end

  should validate_presence_of(:name)
  should have_many(:photos)

end
