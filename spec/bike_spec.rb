require 'bike'

describe Bike do

  it { is_expected.to respond_to(:working?)}

  describe '#new' do
    it 'takes one argument' do
      expect(Bike).to respond_to(:new).with(1).argument
    end
  end

  describe 'report_broken' do
    it 'reports a bike to be broken' do
      subject.report_broken
      expect(subject.working).to eq false
    end
  end

end
