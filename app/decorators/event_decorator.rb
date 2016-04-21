class EventDecorator < Draper::Decorator
  delegate_all

  def coordinates
    Gmaps4rails.build_markers(object.address) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
    end
  end
end
