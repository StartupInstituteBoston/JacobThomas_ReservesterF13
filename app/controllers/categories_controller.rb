class CategoriesController < ApplicationController

  before_filter :set_restaurant, :only => [ :show ]


  def index 
    @categories = Category.all 
  end

  def show 
    @restaurants = Restaurant.where(:categories => {:id => params[:id]}).includes(:categories).all
  end 


  private 
  def set_restaurant
    @category = Category.find(params[:id])
  end
end
