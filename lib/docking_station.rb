require_relative 'bike'

class DockingStation

  def initialize
    @capacity = []
  end

attr_reader :capacity

  def dock(bike)
    fail 'Station is full' if @capacity.length >= 20
    @capacity << bike
  end

  def release_bike
    fail 'Station is empty' unless @capacity.length > 0
    @capacity[0]
  end

end
