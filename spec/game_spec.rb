describe Game do
  let(:playerClass) { double :Player, new: player }
  let(:player) { double :player }
  let(:player1) { double :player1, choice: '' }
  let(:player2) { double :player2, choice: '' }

  describe 'create_player' do
    it 'creates player 1' do
      game = Game.new(playerClass)
      expect(game.player1).to eq player
    end

    it 'creates player 2' do
      game = Game.new(playerClass)
      expect(game.player2).to eq player
    end
  end

  describe 'decider' do
    it 'decides the winner correctly' do
      game = Game.new(playerClass)
      allow(game.player1).to receive(:choice).and_return('paper')
      allow(game.player2).to receive(:choice).and_return('paper')
      expect(game.decider).to eq "Player 1 chose #{game.player1.choice} while player 2 chose #{game.player2.choice}! It's a tie!"
    end
  end
end