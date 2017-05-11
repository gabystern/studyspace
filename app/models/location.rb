class Location < ApplicationRecord
  has_many :study_rooms
  has_many :ratings

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  def self.find_or_create(user_inputs)
    if location = Location.find_by(name: user_inputs[:name])
      return location
    end
    Location.create(
      name: user_inputs[:name],
      address: user_inputs[:address],
      wifi: user_inputs[:wifi],
      capacity: user_inputs[:capacity],
      volume: user_inputs[:volume])
  end

  def categories
    self.study_rooms.map {|room| room.category}.uniq
  end

  def users
    self.study_rooms.map {|room| room.users.map {|u| u}.uniq}.flatten.uniq
  end

  def upcoming
    StudyRoom.upcoming.select {|room| room.location_id == self.id }
  end

  def past
    StudyRoom.past.select {|room| room.location_id == self.id }
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

  def avg_rating
    if self.ratings.length != nil
      array = self.ratings.collect {|rating| rating.score }
      array.sum.to_f / array.size
    end
  end

  def self.most_popular
    array = self.all.group(:address).count.first(3)
    array.map do |location|
      Location.find_by(address: location[0])
    end
  end

  def self.ranked
    array = self.all.group(:address).count
    array.map do |location|
      Location.find_by(address: location[0])
    end
  end

  def self.coord_output(locations)
    
    marker = "&markers=color:blue"
    if locations.class == Array
      marklist = locations.map {|loc| "%7C#{loc.latitude},#{loc.longitude}"}.join
    else
      marklist = "%7C#{locations.latitude},#{locations.longitude}"
    end
    
    api = "&key=AIzaSyB3F176LCpeD1f-yhcdxLpEIGQawbGQBIU"
    marker.concat(marklist).concat(api)
  end
  
  def slug
      self.name.downcase.gsub(/ /,"-")
  end
end
