require 'player'

describe Player do
  subject(:player) { described_class.new('Mr Marketer')}

  describe '#name' do
    it 'returns the correct name' do
      expect(player.name).to eq 'Mr Marketer'
    end
  end

  describe '#games_won' do
    it 'starts session with 0 wins' do
      expect(player.games_won). to eq 0
    end
  end

end
