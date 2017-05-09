class StudyRoomsController < ApplicationController


  def index
    @study_rooms = StudyRoom.all
  end

  def new
    @study_room = StudyRoom.new
    @locations = Location.all
    @categories = Category.all
  end

  def create
    byebug

  end

  def show
    @study_room = StudyRoom.find(params[:id])
  end

  private

  def study_room_params(*args)
    params.require(:study_room).permit(*args)
  end

end
