json.extract! grupo_evento, :id, :nome, :descricao, :prioridade, :user_id, :created_at, :updated_at
json.url grupo_evento_url(grupo_evento, format: :json)
