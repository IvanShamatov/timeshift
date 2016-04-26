require "rails_helper"

RSpec.describe TicketsController, type: :routing do
  describe "routing" do
    let(:e){ FactoryGirl.create(:event)}

    it "routes to #create" do
      expect(:post => "events/#{e.id}/tickets").to route_to("tickets#create", event_id: e.id.to_s)
    end

  end
end
