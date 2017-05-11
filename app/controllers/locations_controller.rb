class LocationsController < ApplicationController
  before_action :authorize_user
    skip_before_action :authorize_user, only: [:index]

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    redirect_to location_path(@location)
  end

  def show
    if Location.find_by_slug(params[:id])
      @location = Location.find_by_slug(params[:id])
    else
      @location = Location.find(params[:id])
    end
    @location
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :wifi, :capacity, :volume)

  end


end
