class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @garden = Garden.find(params[:garden_id]) #checar
  end

  def create
    @booking = current_user.bookings.build(booking_params)
    @garden = Garden.find(params[:garden_id])
    @booking.garden = @garden
    @booking.status = "pending"
    @booking.save
    redirect_to garden_path(params[:garden_id])
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
