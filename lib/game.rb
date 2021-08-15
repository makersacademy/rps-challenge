require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :stored_game, :moves

  def initialize( player_class_1:, player_class_2: )
    @player_1 = player_class_1
    @player_2 = player_class_2
    @stored_game
    @moves = []
  end

  def compare_moves
    @moves << player_1.move_choice
    @moves << player_2.move_choice
  end

  def score_game(player_moves)
    scores_hash = 
    {
      ["rock", "rock"] => "draw",
      ["rock", "scissors"] => @player_1,
      ["scissors", "rock"] => @player_2,
      ["paper", "paper"] => "draw",
      ["paper", "rock"] => @player_1,
      ["rock", "paper"] => @player_2,
      ["scissors", "scissors"] => "draw",
      ["scissors", "paper"] => @player_1,
      ["paper", "scissors"] => @player_2,
    }
    scores_hash[player_moves] == "draw" ? "draw" : scores_hash[player_moves].name
  end

  def result
    score_game(@moves) == "draw" ? "Game is a draw" : "#{score_game(@moves)} wins"
  end

  def self.game(player_1, player_2)
    @stored_game = Game.new( player_class_1: player_1, player_class_2: player_2 )
  end

  def self.game_instance
    @stored_game
  end

end