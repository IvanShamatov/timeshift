class Api::V1::EventsController < ApplicationController
  
  def show
    event_info = EventInfoService.new(params[:id])
    render json: {status: :ok, data: EventInfoSerializer.new(event_info)}
  end

  # /api/v1/events/:id/check/:ticket
  def check
    result = CheckTicket.call(
      event: event_params,
      ticket: ticket_params
    )
    if result.success?
      render json: {status: :ok}, status: :ok
    else 
      render json: {result: :error}, status: :internal_server_error
    end
  end

  def event_params
    params.require(:id)
  end

  def ticket_params
    params.require(:ticket)
  end
end
