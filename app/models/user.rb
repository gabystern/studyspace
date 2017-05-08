class User < ApplicationRecord
  has_many :user_study_rooms
  has_many :study_rooms, through: :user_study_rooms
end
