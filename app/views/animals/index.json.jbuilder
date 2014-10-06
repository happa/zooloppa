json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :description, :image
  json.url animal_url(animal, format: :json)
end
