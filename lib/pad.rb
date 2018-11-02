require_relative 'bike'
require_relative 'docking_station'


station.bikes.any? { |bike| bike.working? }

station.bikes.each |bike| do
  if bike.working?
    #release this bike
    break
  end
  #if no bike has been released give message
end
