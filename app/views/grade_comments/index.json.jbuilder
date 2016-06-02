json.array!(@grade_comments) do |grade_comment|
  json.extract! grade_comment, :id
  json.url grade_comment_url(grade_comment, format: :json)
end
