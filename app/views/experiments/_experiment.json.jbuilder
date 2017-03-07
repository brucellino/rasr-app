json.extract! experiment, :id, :user, :language, :primary, :repo, :created_at, :updated_at
json.url experiment_url(experiment, format: :json)
