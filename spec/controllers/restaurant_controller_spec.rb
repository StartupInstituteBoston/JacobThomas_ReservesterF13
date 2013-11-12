require 'spec_helper' 

describe RestaurantsController do 
  let(:restaurant) { FactoryGirl.create(:restaurant) }
  let(:owner) { FactoryGirl.create :owner }

  describe "#index" do 
    it "should return HTTP 200" do 
      get :index 
      expect(response).to be_success
      response.status.should == 200
    end 
    
    it "should render the index template" do 
      get :index 
      response.should render_template("index")
    end

    it "should assign restaurant" do
      restaurant = Restaurant.create
      get :index
      assigns(:restaurant).should eq(Restaurant.first)
    end
  end

  describe "#show" do 
    it "should render show template for given restaurant" do
      get :show, id: restaurant.id  
      response.should render_template :show
    end
  end

  describe "new" do 

    context "if signed in" do 
      before { sign_in owner }

      it "should return HTTP 200" do 
        get :new 
        response.status.should == 200 
      end

      it "should render the new template" do 
        get :new 
        response.should render_template("new")
      end

      it "should save new restaurant" do 
      end
    end

    context "if not signed in" do 
      before { sign_out owner }
      it "should return HTTP 302" do 
        get :new 
        response.status.should == 302
      end

      it "should render sign in template" do 
        get :new 
        response.should redirect_to(new_owner_session_path)
      end
    end
  end
  

  describe "create" do 
    before { sign_in owner }
    context "with valid attributes" do
      it "should save new contact in database" do 
        post :create, restaurant: restaurant.attributes
        Restaurant.first.should be_valid
      end
    end

    context "with invalid attributes" do  
      it "should redirect to new" do 
        post :create, restaurant: restaurant.attributes
        post :create, restaurant: restaurant.attributes.dup
        response.should render_template :new 
      end
    end
  end

  describe "edit" do 
    it "should render the edit template for given restaurant" do 
      get :edit, id: restaurant.id
      expect(assigns(:restaurant)).to eq restaurant
    end
  end
end
