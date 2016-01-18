json.array!(@projects) do |project|
  json.extract! project, :id, :name, :path, :desc
  json.url project_url(project, format: :json)
end
