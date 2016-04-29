class TicketSerializer < ActiveModel::Serializer
  attributes :ticket_type_id, :email, :name, :used

  def name
    [object.first_name, object.last_name].join(" ")
  end
end
