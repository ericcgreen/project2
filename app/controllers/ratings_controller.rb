class RatingsController < ApplicationController

  def show
    @city = City.find(params[:city_id])
    @rating = Rating.find(params[:id])
  end
  def new
    @city = City.find(params[:city_id])
    @rating = @city.ratings.new
  end
  def create
    @city = City.find(params[:city_id])
    @rating = @city.ratings.create(rating_params)
    redirect_to city_rating_path(@city, @rating)
  end
  def edit
    @city = City.find(params[:city_id])
    @rating = Rating.find(params[:id])
  end
  def update
    @city = City.find(params[:city_id])
    @rating = @city.ratings.find(params[:id])
    @rating.update(rating_params)
    redirect_to city_rating_path(@city, @rating)
  end
  def destroy
    @city = City.find(params[:city_id])
    @rating = @city.ratings.find(params[:id])
    @rating.destroy
    redirect_to city_path(@city)
  end
  private
  def rating_params
    params.require(:rating).permit(:overall_rating, :safety_rating, :comment, :recommendations, :user_photo)
  end
end
