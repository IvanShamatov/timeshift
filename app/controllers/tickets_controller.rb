class TicketsController < ApplicationController

  # POST /tickets
  # POST /tickets.json
  def create
    result = PurchaseTickets.call(
      event: Event.find(params[:event_id]),
      ticket_types: ticket_types
    )

    if result.success?
      render json: {result: :ok}, status: :ok 
    else
      render json: {result: :error}, status: :internal_server_error
    end
  end

  private def ticket_types
    params.require(:ticket_types)
  end
end
