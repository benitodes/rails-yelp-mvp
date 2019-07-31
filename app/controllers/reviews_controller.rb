class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # instanciate new review
    @review = Review.new(review_params)
    # get my restaurant from db
    @restaurant = Restaurant.find(params[:restaurant_id])
    # assign the restaurant to my review
    @review.restaurant = @restaurant
    # save the restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      #re-render the form if validation failed
      render 'new'
    end
  end
end
