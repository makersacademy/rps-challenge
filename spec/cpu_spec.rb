require 'cpu'

describe Cpu do
  subject(:cpu) {described_class.new}

  describe '#choice' do
    it 'returns a choice' do
      allow(cpu).to receive(:choice) {:rock}
      expect(cpu.choice).to eq :rock
    end
  end
end
