require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

attr_reader :bikes

  def dock(bike)
    fail 'Station is full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'Station is empty' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
