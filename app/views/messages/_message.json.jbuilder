json.extract! message, :id, :from_user_id, :to_user_id, :comment, :created_at, :updated_at
json.url message_url(message, format: :json)
