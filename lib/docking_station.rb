require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

attr_accessor :bikes, :capacity

  def dock(bike)
    fail 'Station is full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'Station is empty' if empty?
    fail 'No working bikes' if all_broken?
    @bikes.delete(first_working_bike)
  end

  private

  def first_working_bike
    @bikes.find { |bike| bike.working }
  end

  def full?
    @bikes.count >= @capacity
  end

  def all_broken?
    @bikes.all? { |bike| bike.working == false }
  end

  def empty?
    @bikes.empty?
  end

end
