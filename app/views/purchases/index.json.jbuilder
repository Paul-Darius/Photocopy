json.array!(@purchases) do |purchase|
  json.extract! purchase,  :created_at,
                :updated_at,
                :user_id,
                :status,
                :from_page,
                :to_page,
                :number_pages_per_pages,
                :bandw,
                :binding,
                :tape,
                :comments
  json.url purchase_url(purchase, format: :json)
end
