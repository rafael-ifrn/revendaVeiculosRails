json.array!(@fabricantes) do |fabricante|
  json.extract! fabricante, :id, :descricao
  json.url fabricante_url(fabricante, format: :json)
end
