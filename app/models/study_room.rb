class StudyRoom < ApplicationRecord
  belongs_to :location
  belongs_to :category
  has_many :user_study_rooms
  has_many :comments
  has_many :users, through: :user_study_rooms

  scope :location, -> (location_id) {where (location_id: location_id) unless location_id == ""}
  scope :category, -> (category_id) {where category_id: category_id unless category_id == ""}

  def self.upcoming
    self.all.select {|room| room.start_time > Time.now}
  end

  def self.past
    self.all.select {|room| room.start_time < Time.now}
  end



end
