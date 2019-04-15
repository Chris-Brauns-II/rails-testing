require 'rails_helper'

RSpec.describe WeatherClient, :pact => true do
  
  subject { WeatherClient.new("http://localhost:1234/forecast", "arbitrary-key") }
  let(:response) {
    File.open("/Users/chris/code/rails-testing/spec/weather/weather_api_response.json") do |f|
      hash = JSON.parse(f.read)
    end
  }
  
  describe "Get Weather" do
    before do
      weather_service.given("weather exists")
      .upon_receiving("a request for the weather")
      .with(method: :get, path: '/forecast/arbitrary-key/53.5511/9.9937', query: '')
      .will_respond_with(
        status: 200,
        headers: {'Content-Type' => 'application/json'},
        body: response
        )
    end
      
    it "return the weather" do
      WebMock.allow_net_connect!
      expect(subject.fetch_weather).to be_truthy
      WebMock.disable_net_connect!
    end
  end
end