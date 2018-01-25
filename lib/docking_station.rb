require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bike_rack = []
    @capacity = capacity
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
  end

  private
  def full?
     @bike_rack.length >= @capacity
  end

  def empty?
    @bike_rack.empty?
  end

end
