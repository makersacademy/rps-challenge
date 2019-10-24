require 'game'
require 'player'

describe Game do

  adam = Player.new('Adam')
  subject(:game) { Game.new(adam) }

  describe "Player Wins" do
    it 'tests for player win with rock' do
      player_move = adam.players_move("rock")
      game.workout_winner(player_move, "scissors")
      expect(game.winner).to eq('Adam')
    end

    it 'tests for player win with scissors' do
      player_move = adam.players_move("scissors")
      game.workout_winner(player_move, "paper")
      expect(game.winner).to eq('Adam')
    end

    it 'tests for player win with paper' do
      player_move = adam.players_move("paper")
      game.workout_winner(player_move, "rock")
      expect(game.winner).to eq('Adam')
    end
  end

  describe "Computer Wins" do
    it 'tests for computer win with rock' do
      player_move = adam.players_move("scissors")
      game.workout_winner(player_move, "rock")
      expect(game.winner).to eq('computer')
    end

    it 'tests for computer win with scissors' do
      player_move = adam.players_move("paper")
      game.workout_winner(player_move, "scissors")
      expect(game.winner).to eq('computer')
    end

    it 'tests for computer win with paper' do
      player_move = adam.players_move("rock")
      game.workout_winner(player_move, "paper")
      expect(game.winner).to eq('computer')
    end
  end

  describe "Draw" do
    it 'tests for if the game drawing if player and computers moves are the same' do
      player_move = adam.players_move("rock")
      game.workout_winner(player_move, "rock")
      expect(game.draw).to eq('it was a draw')
    end

  end

end
