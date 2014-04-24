json.array!(@installplaces) do |installplace|
  json.extract! installplace, :id, :name, :postcode, :address, :phone_no, :destination_name
  json.url installplace_url(installplace, format: :json)
end
