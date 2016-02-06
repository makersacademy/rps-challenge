require 'cpu'

describe Cpu do

  subject(:cpu) { described_class.new }
  
  describe '#choice & #cpu_hand' do
    it 'Returns one of three hands' do
      cpu.choice
      expect(["Rock", "Paper", "Scissors"]).to include(cpu.cpu_hand)
    end
  end
end