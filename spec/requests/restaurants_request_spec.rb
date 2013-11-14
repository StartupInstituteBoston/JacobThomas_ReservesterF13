require 'spec_helper'

describe RestaurantsController do 


  describe "#index" do 
    it "should render index template" do 
      get "/restaurants"
      response.status.should == 200
      response.should render_template :index
    end
  end

  describe "#show" do 
  end
end