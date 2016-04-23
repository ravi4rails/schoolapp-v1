json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :middle_name, :last_name, :age, :email, :emplouee_code, :date_of_joining, :date_of_birht, :contact, :address, :city, :state, :country, :qualificarion
  json.url employee_url(employee, format: :json)
end
