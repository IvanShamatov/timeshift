require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :short_description => "MyString",
      :full_description => "MyString",
      :starts_at => "MyString",
      :ends_at => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_short_description[name=?]", "event[short_description]"

      assert_select "input#event_full_description[name=?]", "event[full_description]"

      assert_select "input#event_starts_at[name=?]", "event[starts_at]"

      assert_select "input#event_ends_at[name=?]", "event[ends_at]"
    end
  end
end
