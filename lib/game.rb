require_relative 'rules'

class Game

  def self.store_game(player_one, player_two)
    @current_game = Game.new(player_one, player_two)
  end

  def self.current_game
    @current_game
  end

  RULES = RPSRules::RULES

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two = "Bot")
    @player_one, @player_two = player_one, player_two
    @current_game = nil
  end

  def computer_selection
    string =
    [
      "Rock", "Paper", "Scissors",
      "Spock", "Lizard"
    ]
    return string.sample
  end

  def play(player_selection, computer_selection)

  end

  # def rock(computer)
  #   ["Scissors", "Lizard" ].include? computer
  # end
end
