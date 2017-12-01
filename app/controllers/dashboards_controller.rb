class DashboardsController < ApplicationController
  skip_after_action :verify_authorized

  def dashboard
    @bookings = current_user.bookings
    @flats = current_user.flats
    @my_flat_bookings = @flats.map{ |f| f.bookings}
  end
end
