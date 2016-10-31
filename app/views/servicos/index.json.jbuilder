json.array!(@servicos) do |servico|
  json.extract! servico, :id, :preco, :prazo, :nome, :profissional_id, :registros_servicos_realizado_id
  json.url servico_url(servico, format: :json)
end
