require 'cpu'

describe Cpu do

  subject(:cpu) { described_class.new }
  
  describe '#choice & #cpu_hand' do
    it 'Returns one of three hands' do
      cpu.pick
      expect(["Rock", "Paper", "Scissors"]).to include(cpu.choice)
    end
  end
end