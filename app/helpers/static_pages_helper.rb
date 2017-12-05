module StaticPagesHelper
  def weather_for_lat_and_lon(lat,lon)

    #https://api.openweathermap.org/data/2.5/weather?lat=43.06&lon=-89.524&appid=cd6e634a4a2452096d70045e1ce82ad0&units=imperial
    #{"coord":{"lon":-89.52,"lat":43.06},
    # "weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],
    # "base":"stations",
    # "main":{"temp":39.87,"pressure":1019,"humidity":60,"temp_min":39.2,"temp_max":41},
    # "visibility":16093,"wind":{"speed":4.7,"deg":270},"clouds":{"all":1},"dt":1512087300,"sys":{"type":1,"id":3003,"message":0.1684,"country":"US","sunrise":1512133807,"sunset":1512167052},"id":5262838,"name":"Middleton","cod":200}
    response = RestClient.get "https://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&appid=cd6e634a4a2452096d70045e1ce82ad0&units=imperial"
    parsed = JSON.parse(response)
    parsed["main"]["temp"]
  end
end
