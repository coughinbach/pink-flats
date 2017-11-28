class DashboardsController < ApplicationController

  def dashboard
    @bookings = current_user.bookings
    authorize @bookings
  end
end
