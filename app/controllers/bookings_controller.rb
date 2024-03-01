class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
    @garden = Garden.find(params[:garden_id]) #checar
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    @booking.garden = @garden
    @booking.user = current_user
    @booking.status = "pending"
    @booking.save

    redirect_to bookings_path, notice: "You have booked a garden!"
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to garden_path(params[garden_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :garden_id)
  end
end
