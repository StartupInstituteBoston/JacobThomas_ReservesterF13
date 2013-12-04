class UsersController < ApplicationController

  before_filter :authenticate_user!

  def dashboard 
    @restaurants = Restaurant.find(:all, :conditions => { :user_id => current_user.id })
  end
end
