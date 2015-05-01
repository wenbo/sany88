class CreateProjectPhotos < ActiveRecord::Migration
  def change
    create_table :project_photos do |t|
      t.references :project, index: true

      t.timestamps
    end
  end
end
