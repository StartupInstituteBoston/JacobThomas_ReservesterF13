class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create 
    @restaurant = Restaurant.new(params[:restaurant].permit(:name, :address, :phone, :description))
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
  end 

    private 
      def post_params
        params.require(:restaurant).permit(:name, :address, :phone, :description)
      end

end
