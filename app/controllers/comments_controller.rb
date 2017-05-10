class CommentsController < ApplicationController

def create
    @comment = Comment.create(comment: params[:comment], user_id: params[:user_id], study_room_id: params[:study_room_id])
    redirect_to study_room_path(params[:study_room_id])
end

  
end
