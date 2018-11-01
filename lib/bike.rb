require_relative 'docking_station'

class Bike

DEFAULT_CONDITION = 'working'

attr_reader :condition

  def initialize(condition = DEFAULT_CONDITION)
    @condition = condition
  end

  def working?
    @condition == 'working'
  end

  def report_condition(condition = DEFAULT_CONDITION)
    @condition = condition.to_s
  end

end
