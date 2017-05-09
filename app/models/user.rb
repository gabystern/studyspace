class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true
  has_many :user_study_rooms
  has_many :study_rooms, through: :user_study_rooms
end
