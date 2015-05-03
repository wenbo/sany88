class Project < ActiveRecord::Base
  belongs_to :project_category
  has_one :project_thumbnail
  has_many :project_photos
  scope :published, -> { where(is_public: true) }
end
