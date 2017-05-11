class Category < ApplicationRecord
  has_many :study_rooms

  def self.find_or_create(user_inputs)
    if category = Category.find_by(name: user_inputs[:name])
      return category
    end
    Category.create(name: user_inputs[:name], description: user_inputs[:description])
  end

  def locations
    self.study_rooms.map {|room| room.location.name}.uniq
  end

  def users
    self.study_rooms.map {|room| room.users.map {|user| user}.uniq}.flatten.uniq
  end

   def upcoming
    StudyRoom.upcoming.select {|room| room.category_id == self.id }
  end

    def past
      StudyRoom.past.select {|room| room.category_id == self.id }
    end

  def top_user
    array = self.study_rooms.map {|room| room.users.map {|user| user}}.flatten
    count = Hash.new(0)

    array.each {|word| count[word] += 1}

    if array.empty?
      return []
    else
      return count.sort_by { |k,v| v }.last[0]
    end
  end

  def top_user_event_count
    array = self.study_rooms.map {|room| room.users.map {|user| user.username}}.flatten
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    if array.empty?
      return []
    else
      return count.sort_by { |k,v| v }.last[1]
    end

  end

  def top_location
    array = self.study_rooms.map {|room| room.location}
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    if array.empty?
      return []
    else
      count.sort_by { |k,v| v }.last[0]
    end

  end

  def top_location_event_count
    array = self.study_rooms.map {|room| room.location}
    count = Hash.new(0)

    array.each {|word| count[word] += 1}
    if array.empty?
      return []
    else
      count.sort_by { |k,v| v }.last[1]
    end
  end

  def self.most_popular
    array = self.all.group(:name).count.first(3)
    array.map do |category|
      Category.find_by(name: category[0])
    end
  end

  def slug
      self.name.downcase.gsub(/ /,"-")
  end
end
