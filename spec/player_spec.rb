require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }
  describe '#initialize' do
    it 'takes a name argument and stores it as instance variable' do
      expect(player.name).to eq 'Alex'
    end
    it 'initializes with a score of 0' do
      expect(player.score).to eq 0
    end
  end
  describe '#update_score' do
    it 'increases player score by one' do
      expect{ player.update_score }.to change{ player.score }.by 1
    end
  end
end
