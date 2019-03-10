json.extract! post, :id, :title, :type_of_food, :amount, :created_at, :updated_at
json.url post_url(post, format: :json)
