json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :id, :course_id, :student_id
  json.url enrolment_url(enrolment, format: :json)
end
