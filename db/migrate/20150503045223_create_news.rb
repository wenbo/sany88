class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :name
      t.text :content
      t.boolean :is_public
      t.date :public_time

      t.timestamps
    end
  end
end
