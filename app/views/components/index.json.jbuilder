json.array!(@components) do |component|
  json.extract! component, :id, :page_id, :name, :description
  json.url component_url(component, format: :json)
end
