json.extract! product, :id, :name, :title, :image, :description, :price, :status, :brand_id, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
