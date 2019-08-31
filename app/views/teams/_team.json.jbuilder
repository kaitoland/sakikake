json.extract! team, :id, :name, :icon, :is_public, :created_at, :updated_at
json.url team_url(team, format: :json)
