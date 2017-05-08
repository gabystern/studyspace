class CreateUserStudyRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :user_study_rooms do |t|
      t.integer :user_id
      t.integer :study_room_id
      t.boolean :owner, :default => false

      t.timestamps
    end
  end
end
