class FavCart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :favourites, dependent: :destroy
end
