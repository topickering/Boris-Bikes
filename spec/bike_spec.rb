require 'bike'

describe Bike do

  it { is_expected.to respond_to(:working?)}

  describe '#new' do
    it 'takes one argument' do
      expect(Bike).to respond_to(:new).with(1).argument
    end
  end

  describe 'report_condition' do
    it 'amends the condition of a bike' do
      subject.report_condition('new')
      expect(subject.condition).to eq 'new'
    end
  end

end
