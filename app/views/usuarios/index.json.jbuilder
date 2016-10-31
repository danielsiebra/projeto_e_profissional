json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :email, :nome, :senha
  json.url usuario_url(usuario, format: :json)
end
