require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike_rack = []
  end

  def release_bike
    if empty?
      raise "No bikes at the station"
    end
    @bike_rack.pop
  end

  def dock(bike)
    if full?
      raise "Docking station is full"
    end
    @bike_rack.push(bike)
    # @bike = bike
  end

  private
  def full?
     @bike_rack.length >= 20
  end

  def empty?
    @bike_rack.empty?
  end

end
