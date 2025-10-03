json.extract! lancamento, :id, :setor_id, :categoria_id, :data, :valor, :created_at, :updated_at
json.url lancamento_url(lancamento, format: :json)
