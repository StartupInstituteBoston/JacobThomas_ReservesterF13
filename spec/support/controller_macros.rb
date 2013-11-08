module ControllerMacros
  def login_owner
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:owner]
      sign_in FactoryGirl.create(:owner) # Using factory girl as an example
    end
  end
end