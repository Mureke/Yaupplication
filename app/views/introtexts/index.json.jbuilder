json.array!(@introtexts) do |introtext|
  json.extract! introtext, :id, :text, :startdate, :enddate
  json.url introtext_url(introtext, format: :json)
end
