class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.flat = @flat
    @booking.nights = @booking.end_date - @booking.start_date
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to flat_path(@flat)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.delete
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests)
  end

end
