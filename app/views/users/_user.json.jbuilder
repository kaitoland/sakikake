json.extract! user, :id, :name, :age, :icon, :comment, :is_accept_message, :created_at, :updated_at
json.url user_url(user, format: :json)
