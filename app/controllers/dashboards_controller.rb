class DashboardsController < ApplicationController
  skip_after_action :verify_authorized

  def dashboard
    @bookings = current_user.bookings
    @flats = current_user.flats
  end
end
