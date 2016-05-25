json.array!(@compras) do |compra|
  json.extract! compra, :id, :data, :preco, :obs
  json.url compra_url(compra, format: :json)
end
