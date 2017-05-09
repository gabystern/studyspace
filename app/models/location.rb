class Location < ApplicationRecord
  has_many :study_rooms

  def categories
    self.study_rooms.map {|room| room.category}.uniq
  end
  
  def users
    self.study_rooms.map {|room| room.users.map {|u| u}.uniq}.flatten.uniq
  end

  def upcoming
    StudyRoom.upcoming.select {|room| room.location_id == self.id }
  end

  def top_user
    array = self.study_rooms.map {|room| room.users.map {|user| user}}.flatten
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    count.sort_by { |k,v| v }.last[0]
  end

    def top_category
    array = self.study_rooms.map {|room| room.category}
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    count.sort_by { |k,v| v }.last[0]
  end
  
  
end
