class ForecastsController < ApplicationController

  def index
    api = Rails.application.credentials.weather_api.api_key
    forecast = HTTP.get("http://dataservice.accuweather.com/forecasts/v1/daily/1day/#{params[:keyword]}?apikey=#{api}&language=en-us&details=false&metric=false").parse(:json)
    render json: forecast
  end

end
