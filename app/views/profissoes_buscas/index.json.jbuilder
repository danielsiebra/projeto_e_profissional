json.array!(@profissoes_buscas) do |profissoes_busca|
  json.extract! profissoes_busca, :id, :nome
  json.url profissoes_busca_url(profissoes_busca, format: :json)
end
