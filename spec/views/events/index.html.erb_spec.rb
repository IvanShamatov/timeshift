require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Title",
        :short_description => "Short Description",
        :full_description => "Full Description",
        :starts_at => "Starts At",
        :ends_at => "Ends At"
      ),
      Event.create!(
        :title => "Title",
        :short_description => "Short Description",
        :full_description => "Full Description",
        :starts_at => "Starts At",
        :ends_at => "Ends At"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
    assert_select "tr>td", :text => "Full Description".to_s, :count => 2
    assert_select "tr>td", :text => "Starts At".to_s, :count => 2
    assert_select "tr>td", :text => "Ends At".to_s, :count => 2
  end
end
