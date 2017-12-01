class FlatsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query]
      @flats = policy_scope(Flat).search_by_location(params[:query]).order(created_at: :desc)
    else
      @flats = policy_scope(Flat).order(created_at: :desc)
    end
    @markers = @flats.map do |flat|
      { lat: flat.latitude, lng: flat.longitude }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
    @booking = Booking.new
    @markers = [ { lat: @flat.latitude, lng: @flat.longitude } ]
    @review = Review.new
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.user = current_user
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.delete
    redirect_to flats_path
  end

  private
  def flat_params
    params.require(:flat).permit(:address, :description, :guests, :price, :name, :photo)
  end

end
