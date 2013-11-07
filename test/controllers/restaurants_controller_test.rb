require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  
  test 'should get index' do 
    get :index 
    assert_response :success 
    assert_not_nil assigns(:restaurants)
  end

  test 'should get new' do 
    get :new 
    assert_response :success
  end

  test 'should create restaurant' do 
    #assert_difference('Restaurant.count') do 
     # post :create, post: { name: 'the restaurant', 
      #                    description: 'the first restaurant', 
       #                   number: '240734935',
        #                  address: '2342 Spruce Lane' }
         #               end
      #assert_redirected_to restaurant_path(assigns(:restaurant))
    end

  test 'should show user' do 
    get :show, id: @user 
    assert_response :success 
  end
end
