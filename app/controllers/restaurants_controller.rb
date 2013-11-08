class RestaurantsController < ApplicationController

  before_filter :authenticate_owner!

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create 
    @restaurant = Restaurant.new(post_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end

  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(post_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy 

    redirect_to restaurants_path
  end 

    private 
      def post_params
        params.require(:restaurant).permit(:name, :address, :phone, 
                      :description, :photo, :menu)
      end

end
