class Project < ActiveRecord::Base
  belongs_to :project_category
  has_one :project_thumbnail
end
