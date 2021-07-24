require "rails_helper"

RSpec.describe "Intervention", :type => :routing do
  it "routes to a new intervention" do
    expect(:get => new_intervention_path).
      to route_to(:controller => "interventions", :action => "new")
  end
end