json.extract! adverse_reaction, :id, :product_id, :substance_id, :adverse_reaction_type_id, :created_at, :updated_at
json.url adverse_reaction_url(adverse_reaction, format: :json)
