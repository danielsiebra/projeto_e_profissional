json.array!(@profissionais) do |profissional|
  json.extract! profissional, :id, :areas_profissional_id, :profissoes_profissional_id, :nome_completo, :nome_comercial, :whatsapp, :celular, :email, :endereco
  json.url profissional_url(profissional, format: :json)
end
