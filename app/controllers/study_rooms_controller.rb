class StudyRoomsController < ApplicationController
  before_action :authorize_user
  skip_before_action :authorize_user, only: [:index, :show]

  def index
    @study_rooms = StudyRoom.all
  end

  def new

  end

  def create

  end

  def show

  end

end
