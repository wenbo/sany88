class ProjectThumbnail < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image,
  :url => '/system/project_thumbnail/:id/:style.:extension',
  :path => ':rails_root/public/system/project_thumbnail/:id/:style.:extension',
  :styles => {:thumb => "100x100"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
