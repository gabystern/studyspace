class StudyRoom < ApplicationRecord
  belongs_to :location
  belongs_to :category
  has_many :user_study_rooms
  has_many :comments
  has_many :users, through: :user_study_rooms

  def self.upcoming
    self.all.select {|room| room.start_time > Time.now}
  end

  def self.past
    self.all.select {|room| room.start_time < Time.now}
  end



end
