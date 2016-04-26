class PurchaseTickets 
  include Interactor

  def call
    context.event = Event.find(context.event_id)
    filtered_ticket_types.each do |tt| 
      ticket_type = TicketType.find(tt)
      ticket_type.tickets.create(recorded_price: ticket_type.price)
    end
  rescue Exception => e
    context.fail!(message: "#{e.inspect}")
  end


  def permitted_ticket_types
    context.event.ticket_types.pluck(:id)
  end

  def filtered_ticket_types
    ptt = permitted_ticket_types()
    context.ticket_types_ids.map(&:to_i).select{|tt| ptt.include?(tt)}
  end

end