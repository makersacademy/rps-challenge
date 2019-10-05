require 'multiplayer_game'

describe MultiplayerGame do
  subject(:mpgame) { described_class.new("Kevin", "Steve") }
  context 'when instantiated' do
    it 'knows both players names' do
      expect(mpgame.player1_name).to eq "Kevin"
      expect(mpgame.player2_name).to eq "Steve"
    end
  end
end