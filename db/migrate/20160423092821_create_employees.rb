class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :emplouee_code
      t.date :date_of_joining
      t.date :date_of_birht
      t.string :contact
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.string :qualificarion

      t.timestamps null: false
    end
  end
end
