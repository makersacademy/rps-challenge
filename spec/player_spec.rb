require 'player'

describe Player do
  subject(:player) { described_class.new('Hiro') }

  describe '#name' do
    it 'returns the name of player1' do
      expect(player.name).to eq 'Hiro'
    end
  end
end
