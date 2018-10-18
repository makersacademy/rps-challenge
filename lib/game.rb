class Game
  def self.create(player_one, player_two)
    @current_game = Game.new(player_one, player_two)
  end

  class << self
    attr_reader :current_game
  end
end

class Game
  attr_reader :player_one, :player_two

  WIN_CONDITIONS = {
    "Rock" => ["Scissors"],
    "Scissors" => ["Paper"],
    "Paper" => ["Rock"]
  }

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @players = [@player_one, @player_two]
  end

  def chooser
    @players.find { |player| !player.has_chosen? }
  end

  def result
    winner(@player_one, @player_two)
  end

  def complete?
    @players.all?(&:has_chosen?)
  end

  def reset_choices
    @players.each(&:reset_choice)
  end

  private

  def beats(choice_one, choice_two)
    WIN_CONDITIONS[choice_one].include?(choice_two)
  end

  def winner(player_one, player_two)
    if beats(player_one.choice, player_two.choice)
      player_one
    elsif beats(player_two.choice, player_one.choice)
      player_two
    else
      "tie"
    end
  end

end
