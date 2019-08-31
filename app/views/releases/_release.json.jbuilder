json.extract! release, :id, :project_id, :name, :icon, :tag, :is_public, :created_at, :updated_at
json.url release_url(release, format: :json)
