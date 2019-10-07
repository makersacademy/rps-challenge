require 'game'

describe Game do
  describe '#result' do
    describe 'player 1 wins' do
      it 'wins when Rock vs Scissors' do
        game = Game.new
        expect(game.game_result("Rock", "Scissors")).to eq "Player 1 Wins"
      end
      it 'wins when Rock vs Lizard' do
        game = Game.new
        expect(game.game_result("Rock", "Lizard")).to eq "Player 1 Wins"
      end
      it 'wins when Scissors vs Paper' do
        game = Game.new
        expect(game.game_result("Scissors", "Paper")).to eq "Player 1 Wins"
      end
      it 'wins when Scissors vs Lizard' do
        game = Game.new
        expect(game.game_result("Scissors", "Lizard")).to eq "Player 1 Wins"
      end
      it 'wins when Paper vs Rock' do
        game = Game.new
        expect(game.game_result("Paper", "Rock")).to eq "Player 1 Wins"
      end
      it 'wins when Paper vs Spock' do
        game = Game.new
        expect(game.game_result("Paper", "Spock")).to eq "Player 1 Wins"
      end
      it 'wins when Spock vs Rock' do
        game = Game.new
        expect(game.game_result("Spock", "Rock")).to eq "Player 1 Wins"
      end
      it 'wins when Spock vs Scissors' do
        game = Game.new
        expect(game.game_result("Spock", "Scissors")).to eq "Player 1 Wins"
      end
      it 'wins when Lizard vs Paper' do
        game = Game.new
        expect(game.game_result("Lizard", "Paper")).to eq "Player 1 Wins"
      end
      it 'wins when Lizard vs Spock' do
        game = Game.new
        expect(game.game_result("Lizard", "Spock")).to eq "Player 1 Wins"
      end
    end

    describe 'player 1 loses' do
      it 'loses when Scissors vs Rock' do
        game = Game.new
        expect(game.game_result("Scissors", "Rock")).to eq "Player 2 Wins"
      end
      it 'loses when Lizard vs Rock' do
        game = Game.new
        expect(game.game_result("Lizard", "Rock")).to eq "Player 2 Wins"
      end
      it 'loses when Paper vs Scissors' do
        game = Game.new
        expect(game.game_result("Paper", "Scissors")).to eq "Player 2 Wins"
      end
      it 'loses when Lizard vs Scissors' do
        game = Game.new
        expect(game.game_result("Lizard", "Scissors")).to eq "Player 2 Wins"
      end
      it 'loses when Rock vs Paper' do
        game = Game.new
        expect(game.game_result("Rock", "Paper")).to eq "Player 2 Wins"
      end
      it 'loses when Spock vs Paper' do
        game = Game.new
        expect(game.game_result("Spock", "Paper")).to eq "Player 2 Wins"
      end
      it 'loses when Rock vs Spock' do
        game = Game.new
        expect(game.game_result("Rock", "Spock")).to eq "Player 2 Wins"
      end
      it 'loses when Scissors vs Spock' do
        game = Game.new
        expect(game.game_result("Scissors", "Spock")).to eq "Player 2 Wins"
      end
      it 'loses when Paper vs Lizard' do
        game = Game.new
        expect(game.game_result("Paper", "Lizard")).to eq "Player 2 Wins"
      end
      it 'loses when Spock vs Lizard' do
        game = Game.new
        expect(game.game_result("Spock", "Lizard")).to eq "Player 2 Wins"
      end
    end

    describe 'draws when inputs are the same' do
      it 'draws when Rock vs Rock' do
        game = Game.new
        expect(game.game_result("Rock", "Rock")).to eq "Draw"
      end
      it 'draws when Paper vs Paper' do
        game = Game.new
        expect(game.game_result("Paper", "Paper")).to eq "Draw"
      end
      it 'draws when Scissors vs Scissors' do
        game = Game.new
        expect(game.game_result("Scissors", "Scissors")).to eq "Draw"
      end
      it 'draws when Lizard vs Lizard' do
        game = Game.new
        expect(game.game_result("Lizard", "Lizard")).to eq "Draw"
      end
      it 'draws when Spock vs Spock' do
        game = Game.new
        expect(game.game_result("Spock", "Spock")).to eq "Draw"
      end
    end
  end
end
