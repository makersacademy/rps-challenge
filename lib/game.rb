require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :stored_game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winning_player

    winning_moves = { "scissors" => "paper", "paper" => "rock", "rock" => "scissors" }

    return nil if player_1.move_choice == player_2.move_choice

    winning_moves[player_1.move_choice] == player_2.move_choice ? @player_1.name : @player_2.name

  end

  def result
    winning_player.nil ? "Game is a draw" : "#{winning_player} wins"
  end

  def self.new_game(player_1, player_2)
    @stored_game = Game.new(player_1, player_2)
  end

  def self.game_instance
    @stored_game
  end

end
