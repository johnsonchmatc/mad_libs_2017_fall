class BusStop
  attr_accessor :stop_id, :route, :lat, :lon

  def initialize(stop_id, route, lat, lon)
    @stop_id = stop_id
    @route = route
    @lat = lat
    @lon = lon
  end
end
