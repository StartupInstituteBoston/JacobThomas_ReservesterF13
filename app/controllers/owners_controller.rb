class OwnersController < ApplicationController

  before_filter :authenticate_owner!

  def dashboard 
    @restaurants = Restaurant.find(:all, :conditions => { :owner_id => current_owner.id })
  end



end
