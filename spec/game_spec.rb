require 'game'

describe Game do
  describe '#result' do
    describe 'player 1 wins' do
      it 'wins when Rock vs Scissors' do
        game = Game.new("Rock", "Scissors")
        expect(game.game_result).to eq "Player 1 Wins"
      end
      it 'wins when Scissors vs Paper' do
        game = Game.new("Scissors", "Paper")
        expect(game.game_result).to eq "Player 1 Wins"
      end
      it 'wins when Paper vs Rock' do
        game = Game.new("Paper", "Rock")
        expect(game.game_result).to eq "Player 1 Wins"
      end
    end
    describe 'player 1 loses' do
      it 'loses when Scissors vs Rock' do
        game = Game.new("Scissors", "Rock")
        expect(game.game_result).to eq "Player 2 Wins"
      end
      it 'wins when Paper vs Scissors' do
        game = Game.new("Paper", "Scissors")
        expect(game.game_result).to eq "Player 2 Wins"
      end
      it 'wins when Rock vs Paper' do
        game = Game.new("Rock", "Paper")
        expect(game.game_result).to eq "Player 2 Wins"
      end
    end
  end
end
