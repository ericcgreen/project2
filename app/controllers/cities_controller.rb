class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  def show
    @city = City.find(params[:id])
    @ratings = @city.ratings.all
  end
  def edit
    @city = City.find(params[:id])
  end
  def new
    @city = City.new
  end
  def create
    @city = City.create!(city_params.merge(user: current_user))
    redirect_to city_path(@city)
  end
  def update
    @city = City.find(params[:id])
    if @city.user == current_user
    @city.update(city_params)
  else
    flash[:alert] = "Cannot Edit"
  end
    redirect_to city_path(@city)
  end
  def destroy
    @city = City.find(params[:id])
    if @city.user == current_user
    @city.destroy
  else
    flash[:alert] = "Cannot Delete"
  end
    redirect_to cities_path
  end
  private
  def city_params
    params.require(:city).permit(:name, :country, :photo)
  end
end
