require_relative './player'

class Game
  attr_reader :player, :opponent, :computer_choice, :history
  CHOICES = ["Rock", "Paper", "Scissors"]

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end

  def self.instance
    @game
  end

  def self.new_game(name, second_name)
    player = Player.new(name)
    opponent = Player.new(second_name)
    @game = Game.new(player, opponent)
  end

  def update_player_selection(selection)
    @player.update_selection(selection)
  end

  def computer
    @computer_choice = CHOICES.sample
  end

  def evaluate_game
    result = RULES[INDEX[@player.selection]][INDEX[@computer_choice]]
    return :draw if result == "D"

    result ? :win : :lose
  end
  
  # Extra methods for two-player game

  def update_opponent_selection(selection)
    @opponent.update_selection(selection)
  end

  def evaluate_player_game
    result = RULES[INDEX[@player.selection]][INDEX[@opponent.selection]]
    return :draw if result == "D"

    result ? :win : :lose
  end

  # Paper, Scissors, Rock, Lizard, Spock
  INDEX = { "Paper" => 0, "Scissors" => 1, "Rock" => 2,
            "Lizard" => 3, "Spock" => 4 }
  RULES = [
  ["D", false, true, false, true],
  [true, "D", false, true, false],
  [false, true, "D", true, false],
  [true, false, false, "D", true],
  [false, true, true, false, "D"]
  ]
 
end
