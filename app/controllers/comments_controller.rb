class CommentsController < ApplicationController

def create
    byebug
    @comment = Comment.create()
end

  private

  def study_room_params(*args)
    params..permit(*args)
  end
end
