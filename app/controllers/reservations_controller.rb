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
    @reservation = Reservation.new(post_params)
    if @reservation.save
      redirect_to @reservation
    else
      render 'restaurants' 
    end
  end

  def edit

  end

  def update
  end

  def delete
  end

  private
    def post_params 
      params.require(:reservation).permit(:email, :datetime, :message)
    end
  
end
