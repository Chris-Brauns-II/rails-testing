require 'rails_helper'
require 'json'

RSpec.describe WeatherClient do
  context "YO" do
    let(:url) { "https://api.darksky.net/forecast" }
    let(:api_key) { "arbitrary-key" }
    let(:lattitude) { "53.5511" }
    let(:longitude) { "9.9937" }
    let(:subject) { described_class.new(url, api_key) }
    let(:response) {
      File.open("/Users/chris/code/rails-testing/spec/weather/weather_api_response.json") do |f|
        hash = JSON.parse(f.read)
      end
    }


    it "passes" do
      stub_request(:get, "#{url}/#{api_key}/#{lattitude}/#{longitude}")
        .to_return(body: response.to_json)
      
      result = subject.fetch_weather
      expect(result).to eq(response)
    end
  end
end
