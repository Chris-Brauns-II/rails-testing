require 'rails_helper'

RSpec.describe WeatherClient do
  context "YO" do
    let(:subject) { described_class.new("www.example.com", "someKey") }
    
    it "passes" do
      stub_request(:any, "www.example.com/")
        .to_return(body: "{abc}")
      
      result = subject.fetch_weather
    end
  end
end
