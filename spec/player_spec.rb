require 'player'

describe Player do

  subject(:player) {described_class.new("Crescenzo")}

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq "Crescenzo"
    end
  end


end
