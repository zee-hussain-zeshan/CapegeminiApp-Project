json.array!(@sessions) do |session|
  json.extract! session, :id, :date, :module_id
  json.url session_url(session, format: :json)
end
