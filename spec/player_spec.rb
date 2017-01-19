require 'player'

describe Player do
  subject(:player) { described_class.new("Player_1") }

  describe '#player' do
    it 'player has name' do
      expect(player.name).to eq "Player_1"
    end
  end
end
