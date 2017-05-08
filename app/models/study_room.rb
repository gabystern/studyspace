class StudyRoom < ApplicationRecord
  belongs_to :location
  belongs_to :category
  has_many :user_study_rooms
  has_many :users, through: :user_study_rooms
end
