require 'multiplayer_game'

describe MultiplayerGame do
  subject(:mpgame) { described_class.new(player1_name: "Kevin", player2_name: "Steve") }
  context 'when instantiated' do
    it 'knows both players names' do
      expect(mpgame.player1_name).to eq "Kevin"
      expect(mpgame.player2_name).to eq "Steve"
    end
  end

  context 'when instantiated with only one name' do
    it 'can have a second added' do
      game = MultiplayerGame.new(player1_name: "Kevin")
      game.add_second("Steve")
      expect(game.player2_name).to eq "Steve"
    end
  end

  describe '#ready?' do
    context 'when only one player joined' do
      it 'returns false' do
        expect(MultiplayerGame.create("Kevin").ready?).to eq false
      end
    end

    context 'when both players have joined' do
      it 'returns true' do
        mpgame.ready?
      end
    end
  end
end