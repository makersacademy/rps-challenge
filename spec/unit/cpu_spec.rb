require 'cpu'

describe Cpu do
  subject(:cpu) { described_class.new }

  describe '#name' do
    it 'returns CPU name' do
      expect(cpu.name).to eq 'CPU'
    end
  end
end
