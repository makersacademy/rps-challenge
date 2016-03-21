require 'player'

describe Player do

  subject(:player) { described_class.new name }
  let(:name) { double :name }

  describe '#initialize' do
    it 'returns player\'s  name' do
      expect(player.name).to be name
    end
    it 'returns player\'s score as 0' do
      expect(player.score).to eq 0
    end
  end

  describe '#choice' do
    it 'returns the player\'s choice of weapon' do
      player.choice(:Rock)
      expect(player.weapon).to eq :Rock
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

  describe '#win' do
    it 'increases score by one after a win' do
      expect{ player.win }.to change{ player.score }.by 1
    end
  end
end
