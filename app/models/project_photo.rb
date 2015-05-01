class ProjectPhoto < ActiveRecord::Base
  belongs_to :project

  has_attached_file :image,
  :url => '/system/project/:id/:style.:extension',
  :path => ':rails_root/public/system/project/:id/:style.:extension',
  :styles => {:thumb => "100x100", :show => "700x375>"}

  has_attached_file :small_image,
  :url => '/system/project_smallimage/:id/:style.:extension',
  :path => ':rails_root/public/system/project_smallimage/:id/:style.:extension',
  :styles => {:thumb => "100x100", :show => '125x125'}

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :small_image, :content_type => /\Aimage\/.*\Z/
end
