class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  end

  def create 
    @restaurant = Restaurant.new(params[:restaurant].permit(:name, :address, :phone, :description))

    @restaurant.save
    redirect_to @restaurant
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
