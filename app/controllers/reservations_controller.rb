class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.all
   
  end

  def show
    @reservation = Reservation.find(params[:id])

  end

  def new
    @reservation = Reservation.new

  end

  def create
    @reservation = Reservation.create(reservation_params)
  end

  def edit

  end

  def update
  end

  def delete
  end

  private
    def reservation_params 
      params.require(:reservation).permit(:email, :datetime, :message, :restaurant_id)
    end
  
end
