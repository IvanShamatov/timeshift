class CheckTicket 
  include Interactor

  def call
    event = Event.find(context.event)
    ticket = event.tickets.find_by!(code: context.ticket)
    ticket.update(used: true)
  rescue Exception => e
    context.fail!(message: "#{e.inspect}")
  end

end