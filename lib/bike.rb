require_relative 'docking_station'

class Bike

attr_accessor :working

  def initialize
    @working = true
  end

  def report_broken
    @working = false
    self
  end

end
