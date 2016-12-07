json.array!(@clientes_servicos) do |clientes_servico|
  json.extract! clientes_servico, :id, :nome, :email
  json.url clientes_servico_url(clientes_servico, format: :json)
end
