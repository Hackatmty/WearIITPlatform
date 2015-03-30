json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :name, :fechaNac, :genero, :peso, :altura
  json.url usuario_url(usuario, format: :json)
end
