class WeatherClient
  @@lattitude = "53.5511"
  @@longitude = "9.9937"

  def initialize(weather_service_url, weather_service_api_key)
    @weather_service_url = weather_service_url
    @weather_service_api_key = weather_service_api_key
  end

  def fetch_weather
    # url = "#{@weather_service_url}/#{@weather_service_api_key}/#{@@lattitude}/#{@@longitude}"
    Net::HTTP.get("www.example.com", "/")
  end
end