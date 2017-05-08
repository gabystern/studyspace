class StudyRoom < ApplicationRecord
  has_many :user_study_rooms
  has_many :users, through: :user_study_rooms
end
