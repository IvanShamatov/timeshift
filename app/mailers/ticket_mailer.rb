class TicketMailer < ApplicationMailer

  def your_ticket(ticket)
    @ticket = ticket
    @code = RQRCode::QRCode.new( @ticket.code, :size => 5, :level => :h )
    mail(to: @ticket.email, subject: 'Your ticket')
  end

end
