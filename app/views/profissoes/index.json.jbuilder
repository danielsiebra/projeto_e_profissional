json.array!(@profissoes) do |profissao|
  json.extract! profissao, :id, :areas_profissional_id, :profissao
  json.url profissao_url(profissao, format: :json)
end
