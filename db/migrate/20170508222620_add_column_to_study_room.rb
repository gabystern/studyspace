class AddColumnToStudyRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :study_rooms, :name, :string
  end
end
