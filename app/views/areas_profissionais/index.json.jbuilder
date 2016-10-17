json.array!(@areas_profissionais) do |areas_profissional|
  json.extract! areas_profissional, :id, :area
  json.url areas_profissional_url(areas_profissional, format: :json)
end
