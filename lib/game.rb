class Game
  WIN_CONDITIONS = [
    ["Rock", "Scissors"],
    ["Scissors", "Paper"],
    ["Paper", "Rock"]
  ]
  attr_reader :player_one, :player_two

  def self.create(player_one, player_two)
    @current_game = Game.new(player_one, player_two)
  end

  class << self
    attr_reader :current_game
  end

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def result
    winner(@player_one, @player_two)
  end

  private

  def winner(player_one, player_two)
    if WIN_CONDITIONS.include?([player_one.choice, player_two.choice])
      player_one
    elsif WIN_CONDITIONS.include?([player_two.choice, player_one.choice])
      player_two
    else
      "tie"
    end
  end
end
