class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true
  has_many :user_study_rooms
  has_many :comments
  has_many :user_friends
  has_many :study_rooms, through: :user_study_rooms
  has_many :ratings

  def all_locations
    self.study_rooms.map {|room| room.location}.uniq
  end

  def all_categories
    self.study_rooms.map {|room| room.category}.uniq
  end

  def all_owned
    self.user_study_rooms.select {|ur| ur.owner == true}.map {|r| r.study_room}.uniq
  end

  def all_unowned
    self.user_study_rooms.select {|ur| ur.owner == false}.map {|r| r.study_room}.uniq
  end

  
  def slug
      #need to add additional regex
      self.username.downcase.gsub(/ /,"-")
  end
  
end
