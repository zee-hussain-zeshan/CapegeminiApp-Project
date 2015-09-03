json.array!(@attends) do |attend|
  json.extract! attend, :id, :student_id, :session_id
  json.url attend_url(attend, format: :json)
end
