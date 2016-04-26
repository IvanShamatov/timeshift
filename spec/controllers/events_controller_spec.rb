require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET #index" do
    it "assigns all events as @events" do
      event = FactoryGirl.create(:event)
      get :index, {}
      expect(assigns(:events)).to eq([event])
    end
  end

  describe "GET #show" do
    it "assigns the requested event as @event" do
      event = FactoryGirl.create(:event)
      get :show, {:id => event.to_param}
      expect(assigns(:event)).to eq(event)
    end
  end

end
