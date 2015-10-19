RSpec.describe ApplicationController, type: :routing do
  describe "routing" do

    it "routes to #event(1)" do
      expect(:get => "/").to route_to(controller: "events", action: "show", id: 1)
    end

  end
end
