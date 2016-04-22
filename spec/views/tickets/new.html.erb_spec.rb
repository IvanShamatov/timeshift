require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :ticket_type_id => "MyString",
      :recorded_price => "MyString"
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input#ticket_ticket_type_id[name=?]", "ticket[ticket_type_id]"

      assert_select "input#ticket_recorded_price[name=?]", "ticket[recorded_price]"
    end
  end
end
