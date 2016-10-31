json.array!(@avaliacoes_servicos) do |avaliacoes_servico|
  json.extract! avaliacoes_servico, :id, :comentario, :papel, :avaliacao
  json.url avaliacoes_servico_url(avaliacoes_servico, format: :json)
end
