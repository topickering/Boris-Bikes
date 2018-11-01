require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

attr_reader :bikes, :capacity

  def dock(bike, condition = (Bike::DEFAULT_CONDITION))
    fail 'Station is full' if full?
    bike.report_condition(condition)
    @bikes << bike
  end

  def release_bike
    fail 'Station is empty' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
