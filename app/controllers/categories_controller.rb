class CategoriesController < ApplicationController

  before_filter :set_restaurant, :only => [ :show ]


  def index 
    @categories = Category.all 
  end

  def show 
  end 


  private 
  def set_restaurant
    @category = Category.find(params[:id])
  end
end
