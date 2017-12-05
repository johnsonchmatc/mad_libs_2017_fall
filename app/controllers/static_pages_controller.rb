class StaticPagesController < ApplicationController
  def home
    @stories = Turn.all.paginate(page: params[:page],
                                 per_page: 10)
  end

  def about
    @gems = ["rails", "crypt", "sqlite"]
  end

#2.3.0 :017 > parsed_data["features"].first["properties"]
 #=> {"OBJECTID"=>15341, "StopID"=>6551, "Route"=>15, "Lat"=>43.066666, "Lon"=>-89.524, "DailyBoardings"=>0.45, "DotSize"=>4501.11}
#2.3.0 :018 > parsed_data["features"].first["properties"]["StopID"]
  def bus_weather
    response = RestClient.get 'https://opendata.arcgis.com/datasets/5815e94a364c408ea51d09c81329e57b_25.geojson'
    parsed = JSON.parse(response)
    @stop_collection = []
    10.times.with_index do |i|
      bus_stop = BusStop.new(parsed['features'][i]['properties']["StopID"],
                             parsed['features'][i]['properties']["Route"],
                             parsed['features'][i]['properties']["Lat"],
                             parsed['features'][i]['properties']["Lon"])
      @stop_collection << bus_stop
    end
  end
end
