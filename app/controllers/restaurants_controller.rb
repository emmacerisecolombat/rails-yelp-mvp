class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  # A visitor can see the list of all restaurants.
  # GET '/restaurants'
  def index
    @restaurants = Restaurant.all
  end
  # She/He can see the details of a restaurant,
  # with all the reviews related to the restaurant.
  # Get 'restaurants/:id'
  def show
  end
  # A user can add a new restaurant, and be redirected to
  # the show view of that new restaurant.
  #GET 'restaurants/new'
  def new
    @restaurant = Restaurant.new
  end
  # POST 'restaurants'
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      @restaurant = Restaurant.new
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
