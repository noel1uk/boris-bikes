require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise unless @bike
  rescue
    puts "There is no bike at the station"
    @bike
  end


  def dock(bike)
    @bike = bike
  end


end
