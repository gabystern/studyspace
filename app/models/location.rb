class Location < ApplicationRecord
  has_many :study_rooms

  def self.find_or_create(user_inputs)
    if location = Location.find_by(name: user_inputs[:name])
      return location
    end
    Location.create(name: user_inputs[:name], address: user_inputs[:address])
  end


end
