class TicketSerializer < ActiveModel::Serializer
  attributes :id, :ticket_type_id, :recorded_price
end
