require 'rails_helper'

RSpec.describe ExampleController, :pact => true do
  let(:person_repository) { double("person_repository") }
  let(:weather_client) { double("weather_client") }
  
  describe "hello" do
    context "it responds correctly" do
      it "for a driver in the person repo" do
      end
    end
  end
end
