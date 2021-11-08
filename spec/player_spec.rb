require 'player'

describe Player do
  subject(:player) { described_class.new('Doby') }

  describe '#player_name' do
    it 'returns the player name' do
      expect(player.player_name).to eq('Doby')
    end
  end

  describe '#option' do
    it 'stores player option in a variable' do
      player.move('Paper')
      expect(player.option).to eq('Paper')
    end
  end

end