json.array!(@comments) do |comment|
<<<<<<< HEAD
  json.extract! comment, :id, :detail, :commemt_date, :purchase_id
=======
  json.extract! comment, :id, :text, :purchase_id, :user_id
>>>>>>> 57ef46507b75b7b73aeca610c0f0f6b2874d1fbe
  json.url comment_url(comment, format: :json)
end
