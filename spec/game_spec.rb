require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  context 'when no 2nd player is entered' do
    it 'sets player2 as The Computer' do
      game = Game.create(player1)
      expect(game.player2.name).to eq 'The Computer'
    end
  end
  describe '#single_player?' do
    context 'when no 2nd player is entered' do
      it 'single_player equals true' do
        game = Game.create(player1)
        expect(game.single_player?).to eq true
      end
    end
  end
end
