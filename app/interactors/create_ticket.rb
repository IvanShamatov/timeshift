class CreateTicket
  include Interactor

  def call
    context.event = Event.find(context.event_id)
    if permitted_ticket_types.include?(context.params["ticket_type_id"].to_i)
      ticket_type = TicketType.find(context.params["ticket_type_id"])
      context.ticket = ticket_type.tickets.create(ticket_params(ticket_type))
    else
      context.fail!(message: "Unpermitted ticket type")
    end
  rescue Exception => e
    context.fail!(message: "#{e.inspect}")
  end

  def permitted_ticket_types
    context.event.ticket_types.pluck(:id)
  end

  def ticket_params(type)
    context.params.merge(recorded_price: type.price)
  end
end