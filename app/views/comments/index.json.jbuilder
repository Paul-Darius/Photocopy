json.array!(@comments) do |comment|
  json.extract! comment, :id, :detail, :commemt_date, :purchase_id
  json.url comment_url(comment, format: :json)
end
