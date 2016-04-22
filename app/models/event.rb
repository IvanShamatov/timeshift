class Event < ActiveRecord::Base
  has_one :address
  belongs_to :company
  has_many :ticket_types
  has_many :tickets, through: :ticket_types
  mount_uploader :header_image, HeaderImageUploader
end
