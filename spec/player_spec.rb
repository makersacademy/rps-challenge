require 'player'

describe Player do
  let(:player) { described_class.new('Player name') }

  describe '#name' do
    it 'allows a player name to be saved' do
      expect(player.name).to eq 'Player name'
    end
  end

  describe '#lives' do
    it 'allows a player to have one life' do
      expect(player.lives).to eq 1
    end
  end

end
