require 'rails_helper'

RSpec.describe "PurchaseTickets" do 

  before {
    FactoryGirl.create(:ticket_type_simple)
    FactoryGirl.create(:ticket_type_vip)
    @event = FactoryGirl.create(:event)
    @context = PurchaseTickets.call(
      ticket_types: ["1", "2"],
      event: @event
    )      
  }

  it ".call will return successful context" do
    expect(@context).to be_a_success
  end


  it ".call should create 2 tickets" do 
    expect(Ticket.count).to eq(2)
  end

end