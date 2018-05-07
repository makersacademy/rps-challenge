require 'player'

describe Player do
  subject(:player) { described_class.new('Oliver') }

  describe '#initialize' do
    it 'has a name' do
      expect(subject.name).to eq("Oliver")
    end
    it 'starts with nil choice' do
      expect(subject.choice).to eq(nil)
    end
  end
end
