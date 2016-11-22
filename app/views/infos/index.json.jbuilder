json.array!(@infos) do |info|
  json.extract! info, :id, :text, :email
  json.url info_url(info, format: :json)
end
