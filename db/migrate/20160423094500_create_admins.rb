class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email

      t.timestamps null: false
    end
  end
end
