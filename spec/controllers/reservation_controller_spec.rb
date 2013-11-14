require 'spec_helper'

describe ReservationsController do 

  describe "#index" do 
    context "when database is empty" do 
      it "should return 'db empty'" do 
      end
    end

    context "when database isn't empty" do 
      let!(:reservation) { FactoryGirl.build(:reservation) }
      
      before do
        reservation.save 
      end

      it "should return all" do 
        get :index 
        response.should render_template :index 
      end
    end
  end
end