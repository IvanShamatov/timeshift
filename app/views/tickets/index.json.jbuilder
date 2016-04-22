json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :ticket_type_id, :recorded_price
  json.url ticket_url(ticket, format: :json)
end
