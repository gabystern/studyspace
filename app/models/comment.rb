class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :study_room

    # def self.by_room(room)
    #     self.all.select {|comment| comment.study_room_id == room.id}
    # end

    # def self.by_user(user)
    #     self.all.select {|comment| user_id == user.id}
    # end
        
end
