class RatingsController < ApplicationController

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(location_id: params[:location_id], score: params[:score], user_id: params[:user_id])
    @location = Location.find(params[:location_id][params[:location_id].index(">")+1].to_i)
    @user = User.find(params[:user_id][params[:user_id].index(">")+1].to_i)
    redirect_to location_path(@location.slug)
  end

end
