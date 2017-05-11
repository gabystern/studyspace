class UserStudyRoomsController < ApplicationController

  def create
    @userstudyroom = UserStudyRoom.find_or_create_by(user_id: params[:user_id], study_room_id: params[:study_room_id])
    
  end

  def destroy
    @userstudyroom = UserStudyRoom.find_by(study_room_id: params[:study_room_id], user_id: params[:user_id])
    @userstudyroom.delete
  end
end
