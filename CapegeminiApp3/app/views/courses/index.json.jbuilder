json.array!(@courses) do |course|
  json.extract! course, :id, :module_id, :module_name
  json.url course_url(course, format: :json)
end
