require 'player'

describe Player do

  subject(:player) { described_class.new name }
  let(:name) { double 'Shane' }

  describe '#initialize' do
    it 'returns player one\'s name' do
      expect(player.name).to be name
    end
  end

  describe '#choice' do
    it 'returns the player\'s choice of weapon' do
      player.choice(:rock)
      expect(player.weapon).to eq :rock
    end
  end
  # not convinced this a good test
  describe '#choice' do
    it 'returns a random choice if single player' do
      allow(Kernel).to receive(:rand).and_return(1)
      player.choice(:random)
      expect(player.weapon).to eq :Paper
    end
  end
end
