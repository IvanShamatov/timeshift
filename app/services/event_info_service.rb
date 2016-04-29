class EventInfoService

  attr_accessor :event, :participants

  def initialize(event_id)
    @event = Event.find(event_id)
    @participants = @event.tickets
  end
end
