require 'digest'

class Ticket < ActiveRecord::Base
  belongs_to :ticket_type
  validates :email, :first_name, :last_name, :ticket_type_id, :recorded_price, presence: true
  after_create :generate_code

  def generate_code
    self.update(code: Digest::SHA1.hexdigest([self.created_at, self.email, self.ticket_type_id, Rails.application.secrets[:secret_key_base]].join))
  end
end
