require 'cpu'

describe Cpu do

  subject(:cpu) { described_class.new }
  
  describe '#choice & #pick' do
    it 'Returns one of five hands' do
      cpu.pick
      expect(["Rock", "Paper", "Scissors", "Lizard", "Spock"]).to include(cpu.choice)
    end
  end

  describe '#name' do

  end
end