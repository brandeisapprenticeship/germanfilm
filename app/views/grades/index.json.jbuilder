json.array!(@grades) do |grade|
  json.extract! grade, :id, :submission_id, :user_id, :comment, :grade
  json.url grade_url(grade, format: :json)
end
