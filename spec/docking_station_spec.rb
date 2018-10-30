require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  it 'is expected to release a Bike' do
  expect(subject.release_bike).to be_instance_of(Bike)
end
end

describe Bike do
  it { is_expected.to respond_to(:working?) }
end

describe Bike do
  it { is_expected.to be_working }
end
