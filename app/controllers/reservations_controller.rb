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
    @reservation = Reservation.create(reservation_params)
    redirect_to restaurants_path
    #flash sucess message 
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
