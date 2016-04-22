require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :ticket_type_id => "Ticket Type",
        :recorded_price => "Recorded Price"
      ),
      Ticket.create!(
        :ticket_type_id => "Ticket Type",
        :recorded_price => "Recorded Price"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "Ticket Type".to_s, :count => 2
    assert_select "tr>td", :text => "Recorded Price".to_s, :count => 2
  end
end
