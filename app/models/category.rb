class Category < ApplicationRecord
  has_many :study_rooms


  def locations
    self.study_rooms.map {|room| room.location.name}.uniq
  end

  def users
    self.study_rooms.map {|room| room.users.map {|user| user}.uniq}.flatten.uniq
  end

   def upcoming
    StudyRoom.upcoming.select {|room| room.category_id == self.id }
  end

  def top_user
    array = self.study_rooms.map {|room| room.users.map {|user| user}}.flatten
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    count.sort_by { |k,v| v }.last[0]
  end

    def top_location
    array = self.study_rooms.map {|room| room.location}
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    count.sort_by { |k,v| v }.last[0]
  end

end
