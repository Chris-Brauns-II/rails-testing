class WeatherClient
  @@lattitude = "53.5511"
  @@longitude = "9.9937"
  @@weather_url = "https://api.darksky.net/forecast"
  @@weather_api_key = ENV['WEATHER_API_KEY']

  def initialize(weather_service_url, weather_service_api_key)
    @weather_service_url = weather_service_url || @@weather_service_url
    @weather_service_api_key = weather_service_api_key || @@weather_service_api_key
  end

  def fetch_weather
    site = "#{@weather_service_url}" 
    url = "/#{@weather_service_api_key}/#{@@lattitude}/#{@@longitude}"
    uri = URI("#{site}#{url}")
    # binding.pry
    result = Net::HTTP.get(uri)
    JSON.parse result 
  end
end