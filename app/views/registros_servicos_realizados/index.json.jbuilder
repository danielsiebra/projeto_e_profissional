json.array!(@registros_servicos_realizados) do |registros_servicos_realizado|
  json.extract! registros_servicos_realizado, :id, :profissional_id, :titulo_servico, :nome_cliente, :email_cliente, :descricao_servico, :de, :ate
  json.url registros_servicos_realizado_url(registros_servicos_realizado, format: :json)
end
