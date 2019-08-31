json.extract! project, :id, :name, :icon, :tag, :is_public, :created_at, :updated_at
json.url project_url(project, format: :json)
