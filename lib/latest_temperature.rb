require 'open-uri'

ForecastIO.api_key = ENV['FORECAST_API_KEY']

def weather
  ForecastIO.forecast('29.651997', '-82.324992' , params: { units: 'si' })
end

def latest_temperature
  weather['currently']['temperature']
end
