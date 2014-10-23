json.array!(@sendingplaces) do |sendingplace|
  json.extract! sendingplace, :id, :branch_id, :name, :postcode, :address, :phone_no, :destination_name
  json.url sendingplace_url(sendingplace, format: :json)
end
