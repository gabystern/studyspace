class WelcomeController < ApplicationController
  def index

  end

  def analytics
    @users = User.all
    @locations = Location.all
    @study_rooms = StudyRoom.all
    @categories = Category.all
  end
  
end
