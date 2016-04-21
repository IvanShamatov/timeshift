require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "Title",
      :short_description => "Short Description",
      :full_description => "Full Description",
      :starts_at => "Starts At",
      :ends_at => "Ends At"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Short Description/)
    expect(rendered).to match(/Full Description/)
    expect(rendered).to match(/Starts At/)
    expect(rendered).to match(/Ends At/)
  end
end
