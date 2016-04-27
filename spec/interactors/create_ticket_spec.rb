require 'rails_helper'

RSpec.describe "CreateTicket" do 

  before {
    FactoryGirl.create(:ticket_type_simple)
    FactoryGirl.create(:ticket_type_vip)
    @event = FactoryGirl.create(:event)
    @context = CreateTicket.call(
      params: {"ticket_type_id"=>"2", "email"=>"admin@admin.com", "first_name"=>"123", "last_name"=>"123"},
      event_id: @event.id
    )      
  }

  it ".call will return successful context" do
    expect(@context).to be_a_success
  end


  it ".call should create 1 ticket" do 
    expect(Ticket.count).to eq(1)
  end

end