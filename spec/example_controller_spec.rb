require 'rails_helper'

RSpec.describe ExampleController, :type => :controller do
  let(:person_repository) { double("person_repository") }
  let(:weather_client) { double("weather_client") }
  render_views
  describe "hello" do
    context "it responds correctly" do
      it "for a driver in the person repo" do
        last_name = "Pan"
        allow(person_repository).to receive(:find_by_last_name) { true }
        controller.set_person_repository(person_repository)
        get :hello, :params => { :last_name => last_name }
        expect(response.body).to include "Hello #{last_name}"
      end

      it "for a driver not in the person repo" do
        last_name = "Pan"
        allow(person_repository).to receive(:find_by_last_name) { false }
        controller.set_person_repository(person_repository)
        get :hello, :params => { :last_name => last_name }
        expect(response.body).to include "Who is this '#{last_name}' you're talking about?"
      end

      it "really does" do
        get :hello_world
        expect(response.body.include? "Hello World").to eq(true)
      end
    end
  end
end
