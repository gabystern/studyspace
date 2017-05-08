class CreateStudyRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :study_rooms do |t|
      t.integer :location_id
      t.integer :category_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
