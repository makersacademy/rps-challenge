describe Game do
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  let(:game) { Game.new(player1, player2) }

  describe 'game start' do
    it 'take player 1 and player 2 instance names' do
      expect(game.player1).to eq(player1)
      expect(game.player2).to eq(player2)
    end
  end

end
