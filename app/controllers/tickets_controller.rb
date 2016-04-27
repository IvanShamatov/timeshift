class TicketsController < ApplicationController

  # POST /tickets
  # POST /tickets.json
  def create
    result = PurchaseTicket.call(
      event_id: event_param,
      params: ticket_params
    )

    if result.success?
      render json: {result: :ok}, status: :ok 
    else
      render json: {result: :error}, status: :internal_server_error
    end
  end

  private def ticket_params
    params.require(:ticket).permit(:ticket_type_id, :email, :first_name, :last_name)
  end

  private def event_param
    params.require(:event_id)
  end
end
