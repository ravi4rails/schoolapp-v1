json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :middle_name, :last_name, :email, :enrollment_number, :enrollment_date, :admission_number, :admission_date, :date_of_birth, :city, :state, :country, :contact, :date_of_birth, :age
  json.url student_url(student, format: :json)
end
