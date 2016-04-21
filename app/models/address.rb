class Address < ActiveRecord::Base
  belongs_to :event
  after_validation :geocode

  geocoded_by :full_street_address

  def full_street_address
    "#{self.country}, #{self.city}, #{self.name}"
  end

end
