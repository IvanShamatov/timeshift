class EventInfoSerializer < ActiveModel::Serializer
  attributes :event, :participants

  def event
    EventSerializer.new(object.event).attributes
  end


  def participants
    ActiveModel::Serializer::CollectionSerializer.new(object.participants, serializer: TicketSerializer)
  end
end
