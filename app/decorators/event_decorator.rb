class EventDecorator < Draper::Decorator
  delegate_all

  def company_name
    object.company.name
  end

  def coordinates
    Gmaps4rails.build_markers(object.address) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
    end
  end
end
