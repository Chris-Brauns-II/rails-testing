require 'pact/consumer/rspec'
require 'pact/provider/rspec'

Pact.service_consumer 'Weather App' do
  has_pact_with 'Weather Client' do
    mock_service :weather_service do
      port 1234
    end
  end
end

Pact.service_provider 'Example Service' do
  honours_pact_with 'Everyone' do
    pact_uri '/Users/chris/code/rails-testing/spec/pact.json'
  end
end