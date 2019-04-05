require 'game'

describe Game do
  describe '#result' do
    describe 'player 1 wins' do
      it 'wins when Rock vs Scissors' do
        game = Game.new
        expect(game.game_result("Rock", "Scissors")).to eq "Player 1 Wins"
      end
      it 'wins when Scissors vs Paper' do
        game = Game.new
        expect(game.game_result("Scissors", "Paper")).to eq "Player 1 Wins"
      end
      it 'wins when Paper vs Rock' do
        game = Game.new
        expect(game.game_result("Paper", "Rock")).to eq "Player 1 Wins"
      end
    end
    describe 'player 1 loses' do
      it 'loses when Scissors vs Rock' do
        game = Game.new
        expect(game.game_result("Scissors", "Rock")).to eq "Player 2 Wins"
      end
      it 'wins when Paper vs Scissors' do
        game = Game.new
        expect(game.game_result("Paper", "Scissors")).to eq "Player 2 Wins"
      end
      it 'wins when Rock vs Paper' do
        game = Game.new
        expect(game.game_result("Rock", "Paper")).to eq "Player 2 Wins"
      end
    end
  end
end
