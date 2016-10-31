json.array!(@solicitacoes_avaliacoes_servicos) do |solicitacoes_avaliacoes_servico|
  json.extract! solicitacoes_avaliacoes_servico, :id, :nome_cliente, :email, :papel, :usuario_id
  json.url solicitacoes_avaliacoes_servico_url(solicitacoes_avaliacoes_servico, format: :json)
end
