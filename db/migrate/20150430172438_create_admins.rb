class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :encrypt_pwd
      t.string :salt

      t.timestamps
    end
  end
end
