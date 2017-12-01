class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:flat_id])
  end

  def new
    @review = Review.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.user = current_user
    authorize @flat
    if @review.save
      redirect_to flat_path(@flat)
    else
      render 'flats/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
