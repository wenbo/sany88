class AddAttachmentImageSmallImageToProjectPhotos < ActiveRecord::Migration
  def self.up
    change_table :project_photos do |t|
      t.attachment :image
      t.attachment :small_image
    end
  end

  def self.down
    remove_attachment :project_photos, :image
    remove_attachment :project_photos, :small_image
  end
end
