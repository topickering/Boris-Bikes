require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end

describe DockingStation do
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end

describe DockingStation do
  describe '#release_bike' do
    it 'returns an error if there are no bikes' do
      expect { subject.release_bike }.to raise_error 'Station is empty'
    end
  end
end
