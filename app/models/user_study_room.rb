class UserStudyRoom < ApplicationRecord
  belongs_to :study_room
  belongs_to :user
end
