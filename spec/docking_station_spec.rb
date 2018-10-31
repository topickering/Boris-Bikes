require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  describe '#release_bike' do
    it 'returns an error if there are no bikes' do
      expect { subject.release_bike }.to raise_error 'Station is empty'
    end
  end

  describe '#dock(bike)' do
    it 'returns an error if the station is full' do
      bike = Bike.new
      subject.dock(bike)
      expect { subject.dock(bike) }.to raise_error 'Station is full'
    end
  end

end
