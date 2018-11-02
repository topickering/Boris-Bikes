require 'bike'

describe Bike do

  describe '#new' do
    it 'takes one argument' do
      expect(Bike).to respond_to(:new).with(1).argument
    end
  end

  describe 'report_broken' do
    it 'reports a bike to be broken' do
      expect(subject.report_broken.working).to eq false
    end
  end

end
