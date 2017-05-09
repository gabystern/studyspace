class Category < ApplicationRecord
  has_many :study_rooms

  def self.find_or_create(user_inputs)
    if category = Category.find_by(name: user_inputs[:name])
      return category
    end
    Category.create(name: user_inputs[:name], description: user_inputs[:description])
  end


end
