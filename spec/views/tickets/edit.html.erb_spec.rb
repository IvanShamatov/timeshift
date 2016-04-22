require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :ticket_type_id => "MyString",
      :recorded_price => "MyString"
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_ticket_type_id[name=?]", "ticket[ticket_type_id]"

      assert_select "input#ticket_recorded_price[name=?]", "ticket[recorded_price]"
    end
  end
end
