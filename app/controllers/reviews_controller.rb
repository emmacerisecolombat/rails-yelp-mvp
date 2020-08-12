class ReviewsController < ApplicationController

  # She/He can add a new review to a restaurant
  # GET 'restaurant/:id/reviews/new'
  def new
    # We want to create a Review FOR ONE Restaurant in PARTICULAR
    # => Need Restaurant ID
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  # POST 'restaurants/:id/reviews'
  def create
    @review = Review.new(review_params)
    # We need `restaurant_id` to associate review with
    #the correct restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
