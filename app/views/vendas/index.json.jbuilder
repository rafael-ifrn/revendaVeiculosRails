json.array!(@vendas) do |venda|
  json.extract! venda, :id, :data, :desconto, :comissao, :obs, :status
  json.url venda_url(venda, format: :json)
end
