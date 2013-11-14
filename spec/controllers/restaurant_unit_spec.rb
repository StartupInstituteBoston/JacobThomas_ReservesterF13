require 'spec_helper'

describe "#Index" do 
  before { Restaurant.stub(:all) {"all"} }
  it "should render 'all'" do 
    get :index 
  end
end
