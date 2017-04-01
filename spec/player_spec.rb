require 'player'

describe Player do
  subject(:player) { described_class.new("Yoda") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Yoda"
    end
  end
end
