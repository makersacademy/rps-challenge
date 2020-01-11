require 'game'

describe Game do

  subject(:game) { Game.new(player_1) }
  let(:player_1) { double :player }

  describe '#player_1' do
    it 'retrieve player' do
      expect(game.player_1).to eq player_1
    end
  end
  
end
