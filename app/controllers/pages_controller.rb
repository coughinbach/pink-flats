class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]
  after_action :verify_authorized, except: :home
  after_action :verify_policy_scoped, except: :home

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
