class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true
  has_many :user_study_rooms
  has_many :study_rooms, through: :user_study_rooms

  def all_locations
    self.study_rooms.map {|room| room.location}.uniq
  end

  def all_categories
    self.study_rooms.map {|room| room.category}.uniq
  end
  
end
