class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def dashboard
    @flats = current_user.flats
  end
end
