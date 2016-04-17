json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :website, :phone, :title
  json.url doctor_url(doctor, format: :json)
end
