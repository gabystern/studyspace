class StudyRoomsController < ApplicationController
  # before_action :authorize_user
  # skip_before_action :authorize_user, only: [:index, :show]


  def index
    @study_rooms = StudyRoom.all
  end

  def new
    @study_room = StudyRoom.new
    @locations = Location.all
    @categories = Category.all
  end

  def create
    if params[:study_room][:location][:name] == ''
      location_id = params[:study_room][:location_id]
    else
      location_id = Location.find_or_create(params[:study_room][:location]).id
    end

    if params[:study_room][:category][:name] == ''
      category_id = params[:study_room][:category]
    else
      category_id = Category.find_or_create(params[:study_room][:category]).id
    end
    study_room = StudyRoom.create(
    name: params[:study_room][:name],
    start_time: start_time_convert(params[:study_room][:time]),
    end_time: end_time_convert(params[:study_room][:time]),
    category_id: category_id,
    location_id: location_id)

   redirect_to study_room_path(study_room.id)
   end

  def show
    @study_room = StudyRoom.find(params[:id])
  end

  private

  def study_room_params(*args)
    params.require(:study_room).permit(*args)
  end

end
