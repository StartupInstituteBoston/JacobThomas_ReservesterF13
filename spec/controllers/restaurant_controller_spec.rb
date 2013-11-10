require 'spec_helper' 

describe RestaurantsController do 
  login_owner

  describe "#show" do 
    #Sets variable :restaurant to equal what we just created in the factory
    let(:owner) { FactoryGirl.create(:owner) }
    let(:restaurant) { FactoryGirl.create(:restaurant) }

    it "should render show template for given restaurant" do
      get :show, id: restaurant.id 
      expect(assigns(:restaurant)).to eq restaurant 
      expect(response).to render_template("show")
    end
  end

  describe "#index" do 
    it "should return HTTP 200" do 
      get :index 
      expect(response).to be_success
      expect(response.status).to eq(200)
    end 
    
    it "should render the index template" do 
      get :index 
      expect(response).to render_template("index")
    end
  end

  describe "new" do 
    it "should return HTTP 200" do 
      get :new 
      expect(response).to be_success 
    end

    it "should render the new template" do 
      get :new 
      expect(response).to render_template("new")
    end
  end

  describe "create" do 
    context "with valid attributes" do
      it "should save new contact in database" do 
        temp_restaurant = FactoryGirl.build(:restaurant)
        post :create, restaurant: temp_restaurant.attributes
        Restaurant.first.should be_valid
      end
    end

    context "with invalid attributes" do 
      it "does not save new contact in database" do

      end
    end
  end

  describe "edit" do 
    let(:restaurant) { FactoryGirl.create(:restaurant) }

    it "should render the edit template for given restaurant" do 
      get :edit, id: restaurant.id
      expect(assigns(:restaurant)).to eq restaurant
    end
  end

  #NEED TO TEST UPDATE METHOD

  #NEED TO TEST DESTROY METHOD 
  
end