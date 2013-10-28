json.array!(@products) do |product|
  json.extract! product, :name, :description, :category_id, :user_id
  json.url product_url(product, format: :json)
end