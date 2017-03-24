class WeatherTypesController < ApplicationController
  def index

  end

  def get_songs
    p params[:chosen_weather]
    @songs = Song.all
    redirect_to action: "index"
  end
end
