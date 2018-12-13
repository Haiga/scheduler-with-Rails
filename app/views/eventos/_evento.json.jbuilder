json.extract! evento, :id, :dia, :horario, :descricao, :prioridade, :estado, :grupo_evento_id, :created_at, :updated_at
json.url evento_url(evento, format: :json)
