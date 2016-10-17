json.array!(@buscas_profissionais) do |buscas_profissional|
  json.extract! buscas_profissional, :id
  json.url buscas_profissional_url(buscas_profissional, format: :json)
end
