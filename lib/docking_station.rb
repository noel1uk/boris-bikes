require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    begin
      @bike
      raise "There's no bike at the station" if (@bike == nil || @bike < 1)
      
      rescue
    end
  end

  def dock(bike)
    @bike = bike
  end


end
