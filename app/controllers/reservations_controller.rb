class ReservationsController < ApplicationController

  before_filter :set_reservation, :except => [ :index, :new, :create ]

  def index
    @reservation = Reservation.all
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if verify_recaptcha() && @reservation.save
      @restaurant = Restaurant.find(@reservation.restaurant_id)
      @owner = Owner.find(@restaurant.user_id)
      #Notifier.send_reservation_email(@owner, @reservation).deliver
      redirect_to restaurants_path
    else
      redirect_to restaurants_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @reservation.destroy
    redirect_to restaurants_path
  end

  private
  def reservation_params 
    params.require(:reservation).permit(:email, :datetime, :message, :restaurant_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
