json.extract! meal, :id, :description, :price, :cookingtime, :created_at, :updated_at
json.url meal_url(meal, format: :json)
