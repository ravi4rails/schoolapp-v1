class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :enrollment_number
      t.date :enrollment_date
      t.string :admission_number
      t.date :admission_date
      t.string :date_of_birth
      t.string :city
      t.string :state
      t.string :country
      t.string :contact
      t.date :date_of_birth
      t.integer :age

      t.timestamps null: false
    end
  end
end
