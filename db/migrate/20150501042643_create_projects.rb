class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :brand_name
      t.string :company_name
      t.string :service_content
      t.text :desc
      t.references :project_category, index: true
      t.boolean :is_public

      t.timestamps
    end
  end
end
