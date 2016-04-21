class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_description, :full_description, :starts_at, :ends_at
  has_one :address
end
