class Favourite < ActiveRecord::Base
  attr_accessible :fav_cart_id, :project_id, :project
  belongs_to :project
  belongs_to :fav_cart
end
