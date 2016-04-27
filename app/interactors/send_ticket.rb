class SendTicket
  include Interactor

  def call
    context.fail! unless TicketMailer.your_ticket(context.ticket).deliver
  end
end