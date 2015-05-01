class AddAttachmentImageToProjectThumbnails < ActiveRecord::Migration
  def self.up
    change_table :project_thumbnails do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :project_thumbnails, :image
  end
end
