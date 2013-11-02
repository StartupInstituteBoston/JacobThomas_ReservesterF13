require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should not save restaurant without title" do 
    restaurant = Restaurant.new
    assert !restaurant.save, "Saved the post without a title"
  end
end
