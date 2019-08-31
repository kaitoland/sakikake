json.extract! team_project, :id, :team_id, :project_id, :icon, :is_public, :comment, :created_at, :updated_at
json.url team_project_url(team_project, format: :json)
