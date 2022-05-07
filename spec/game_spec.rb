describe Game do
  let(:player_1) { instance_double("Player 1") }
  let(:player_2) { instance_double("Player 2") }
  subject(:game) { Game.new(player_1, player_2) }

  describe 'players' do
    it 'should return player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'should return player 2' do
      expect(game.player_2).to eq player_2
    end
  end
end