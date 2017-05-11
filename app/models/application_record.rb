class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  

  def self.find_by_slug(slug)
      self.all.find{|something| something.slug == slug}
  end

end
