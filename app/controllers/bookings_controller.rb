class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @flat = Flat.find(params[:flat_id])
    @bookings = Booking.find(params[:booking_id])
  end

  def new

  end

  def create

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests)
  end

end
