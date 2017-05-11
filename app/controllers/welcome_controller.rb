class WelcomeController < ApplicationController
  def index
  end

  def analytics
    @users = User.all
    @locations = Location.all
    @study_rooms = StudyRoom.all
    @categories = Category.all

    @by_cat = {}
    StudyRoom.all.group(:category_id).count.sort_by{|k,v|v}.reverse.each do |k,v|
      @by_cat[Category.find(k).name] = v
    end

    @by_loc = {}
    StudyRoom.all.group(:location_id).count.sort_by{|k,v|v}.reverse.each do |k,v|
      @by_loc[Location.find(k).name] = v
    end

    @by_user = {}
    UserStudyRoom.all.group(:user_id).count.sort_by{|k,v|v}.reverse.each do |k,v|
      @by_user[User.find(k).username] = v
    end
  end

end
