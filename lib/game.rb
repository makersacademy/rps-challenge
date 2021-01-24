require_relative 'player'

class Game

  def self.new_game(player_1, player_2)
    @current_game = Game.new(player_1, player_2)
  end

  def self.current_game
    @current_game
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play(player_1_choice)
    @player_1.pick_specified player_1_choice
    @player_2.pick_random
  end

  def result
    p "Getting to result method"
    return "It's a draw!" if draw?
    "#{winner_name} wins!"
  end

  private

  def draw?
    @player_1.choice == @player_2.choice
  end

  def winner_name
    return @player_1.name if player_1_wins?
    @player_2.name
  end

  def player_1_wins?
    victory_hash = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }
    victory_hash[@player_1.choice] == @player_2.choice
  end

end
