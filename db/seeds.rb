# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artists = Artist.create([{ name: "Aliceffekt" }])
albums = Album.create([{name: 'Xy', artist: artists.first}])
Song.create(name: 'Xyl', album: albums.first, artist: artists.first)

WeatherType.create([{ name: "sunny", des: "It's sunny.", precipitation: 0.000, temp_low: 0, temp_high: 0, wind_speed: 0},
  { name: "cloudy", des: "It's cloudy.", precipitation: 0.000, temp_low: 0, temp_high: 0, wind_speed: 0},
])
