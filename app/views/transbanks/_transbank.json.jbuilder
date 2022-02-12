json.extract! transbank, :id, :amount, :method_id, :created_at, :updated_at
json.url transbank_url(transbank, format: :json)
