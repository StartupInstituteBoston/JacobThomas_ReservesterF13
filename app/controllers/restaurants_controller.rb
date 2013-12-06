class RestaurantsController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :create]
  before_filter :set_restaurant, :except => [:index, :new, :create]
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
    end
    @reservation = Reservation.new
  end

  def new
      @restaurant = Restaurant.new
      @restaurant.reservations.build
  end

  def create 
    @restaurant = current_user.restaurants.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    params[:restaurant][:user_ids] ||= []
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant.destroy 
    redirect_to restaurants_path
  end 

  def star 
    type = params[:type]
    if type == "star"
      current_user.starred_restaurants << @restaurant 
      redirect_to :back, notice: "You starred #{@restaurant.name}"
    elsif type == "unstar"
      current_user.starred_restaurants.delete(@restaurant)
      redirect_to :back, notice: "You unstarred #{@restaurant}"
    end
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, 
                  :description, :photo, :menu, :reservation, :category_ids => [] )
  end

  def set_restaurant 
    @restaurant = Restaurant.find(params[:id])
  end
end
