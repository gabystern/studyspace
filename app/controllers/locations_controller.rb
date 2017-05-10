class LocationsController < ApplicationController
  before_action :authorize_user

  def index
    @locations = Location.all
  end

  def show
    if Location.find_by_slug(params[:id])
      @location = Location.find_by_slug(params[:id])
    else
      @location = Location.find(params[:id])
    end
    @location
  end


end
