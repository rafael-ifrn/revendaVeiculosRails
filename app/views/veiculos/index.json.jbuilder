json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :anoFabricacao, :chassi, :placa, :cilindradas, :foto
  json.url veiculo_url(veiculo, format: :json)
end
