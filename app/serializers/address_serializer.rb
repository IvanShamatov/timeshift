class AddressSerializer < ActiveModel::Serializer
  attributes :city, :country, :name, :latitude, :longitude
end
