class CreateProjectThumbnails < ActiveRecord::Migration
  def change
    create_table :project_thumbnails do |t|
      t.references :project, index: true

      t.timestamps
    end
  end
end
