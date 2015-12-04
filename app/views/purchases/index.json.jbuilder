json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :file_url, :comments
  json.url purchase_url(purchase, format: :json)
end
