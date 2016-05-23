json.array!(@parte_pagamentos) do |parte_pagamento|
  json.extract! parte_pagamento, :id, :quantia
  json.url parte_pagamento_url(parte_pagamento, format: :json)
end
