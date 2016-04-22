require 'rails_helper'

RSpec.describe "tickets/show", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :ticket_type_id => "Ticket Type",
      :recorded_price => "Recorded Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ticket Type/)
    expect(rendered).to match(/Recorded Price/)
  end
end
