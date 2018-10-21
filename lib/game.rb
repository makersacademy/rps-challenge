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

  def initialize(player_one, player_two = Player.new("Bot"))
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
    if wins?(player_selection, computer_selection)
      @player_two.hit if @player_two.is_a?(Player)
      @player_one
    elsif wins?(computer_selection, player_selection)
      @player_one.hit if @player_one.is_a?(Player)
      @player_two
    else
      "tie"
    end
  end

  def end_of_game
    true if @player_one.dead? || @player_two.dead?
  end

  private

  def wins?(choice_1, choice_2)
    RULES[choice_1].include?(choice_2)
  end
end
