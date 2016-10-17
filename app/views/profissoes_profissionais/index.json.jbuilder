json.array!(@profissoes_profissionais) do |profissoes_profissional|
  json.extract! profissoes_profissional, :id, :areas_profissional_id, :profissao_id
  json.url profissoes_profissional_url(profissoes_profissional, format: :json)
end
