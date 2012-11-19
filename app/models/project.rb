class Project < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :start_date
  has_many :favourites
  before_destroy :ensure_not_referenced_by_any_favourite
  
  private
    #ensure that there are no favourites referencing this project
    def ensure_not_referenced_by_any_favourite
      if favourites.empty?
        return true
      else
        errors.add(:base, 'Favourites present')
        return false
      end
    end
end
