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
    @rating = @city.ratings.create!(rating_params.merge(user: current_user))
    redirect_to city_rating_path(@city, @rating)
  end
  def edit
    @city = City.find(params[:city_id])
    @rating = Rating.find(params[:id])
  end
  def update
    @city = City.find(params[:city_id])
    @rating = @city.ratings.find(params[:id])
    if @rating.user == current_user
    @rating.update(rating_params)
  else
    flash[:alert] = "Only the original author of this post can edit it"
  end
    redirect_to city_rating_path(@city, @rating)
  end
  def destroy
    @city = City.find(params[:city_id])
    @rating = @city.ratings.find(params[:id])
    if @rating.user == current_user
    @rating.destroy
  else
    flash[:alert] = "Only the original author of this post can delete it"
  end
    redirect_to city_path(@city)
  end
  private
  def rating_params
    params.require(:rating).permit(:overall_rating, :safety_rating, :comment, :recommendations, :user_photo)
  end
end
