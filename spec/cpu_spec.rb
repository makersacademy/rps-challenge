require 'cpu'

describe Cpu do
  subject(:cpu) { described_class.new }
  
  describe '#choice' do
    it 'gives a random choice' do
      expect(Cpu::CHOICES).to include cpu.choice
    end
  end
end