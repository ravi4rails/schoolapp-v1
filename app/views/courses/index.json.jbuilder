json.array!(@courses) do |course|
  json.extract! course, :id, :name, :department_id
  json.url course_url(course, format: :json)
end
