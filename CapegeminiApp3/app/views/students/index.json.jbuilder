json.array!(@students) do |student|
  json.extract! student, :id, :student_id, :firsname, :surname
  json.url student_url(student, format: :json)
end
