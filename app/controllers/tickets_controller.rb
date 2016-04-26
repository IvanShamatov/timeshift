class TicketsController < ApplicationController

  # POST /tickets
  # POST /tickets.json
  def create
    result = PurchaseTickets.call(
      event_id: event_param,
      ticket_types_ids: ticket_types
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

  private def event_param
    params.require(:event_id)
  end
end
