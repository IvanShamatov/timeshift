require 'rails_helper'


RSpec.describe TicketsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Ticket. As you add validations to Ticket, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {"ticket_types"=>["1", "2"], "event_id"=>"1"}
  }
  let(:invalid_attributes) {
    {"ticket_typers"=>["1", "2"], "event"=>"1"}
  }

  describe "POST #create" do
    it "creates a new Ticket" do
      interactor = double()
      interactor.stub(:success?) { true }
      allow(PurchaseTickets).to receive(:call).and_return(interactor)
      post :create, valid_attributes
      expect(response).to have_http_status(:ok)
    end

    it "creates a new Ticket" do
      interactor = double()
      interactor.stub(:success?) { false }
      allow(PurchaseTickets).to receive(:call).and_return(interactor)
      post :create, valid_attributes
      expect(response).to have_http_status(:internal_server_error)
    end
  end

end
