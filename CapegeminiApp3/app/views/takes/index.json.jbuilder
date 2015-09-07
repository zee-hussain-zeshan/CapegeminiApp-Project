json.array!(@takes) do |take|
  json.extract! take, :id, :assessment_id, :student_id
  json.url take_url(take, format: :json)
end
