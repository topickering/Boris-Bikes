require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do
    it 'returns an error if there are no bikes' do
      expect { subject.release_bike }.to raise_error 'Station is empty'
    end
  end

  describe '#dock(bike)' do
    it 'returns an error if the station is full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Station is full'
    end
  end

  describe '#new' do
    it 'takes one argument' do
      expect(DockingStation).to respond_to(:new).with(1).argument
    end
  end

  it 'has a default capacity if no other is specified' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      subject.capacity.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Station is full'
    end
  end

  describe '#dock' do
    it 'takes two arguments - the bike id and its condition' do
      expect(subject).to respond_to(:dock).with(2).arguments
    end
  end

end
