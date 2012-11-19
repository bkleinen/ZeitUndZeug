class Favourite < ActiveRecord::Base
  attr_accessible :user_id, :project_id, :project
  belongs_to :project
  belongs_to :user
end
