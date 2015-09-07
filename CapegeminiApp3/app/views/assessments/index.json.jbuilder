json.array!(@assessments) do |assessment|
  json.extract! assessment, :id, :module_id, :assessment_name, :max_points
  json.url assessment_url(assessment, format: :json)
end
