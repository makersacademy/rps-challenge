require 'game'

describe Game do

  subject(:game) { Game.new('Player', 'COMPUTER')}

  describe '#player' do
    it 'retrieves player' do
      expect(game.player).to eq 'Player'
    end
  end

  describe '#computer' do
    it 'retrieves player' do
      expect(game.computer).to eq 'COMPUTER'
    end
  end
end
