require 'cpu'

describe Cpu do

  subject(:cpu) { described_class.new }
  
  describe '#choice & #cpu_hand' do
    it 'Returns one of five hands' do
      cpu.pick
      expect(["Rock", "Paper", "Scissors", "Lizard", "Spock"]).to include(cpu.choice)
    end
  end
end