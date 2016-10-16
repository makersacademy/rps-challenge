require_relative 'player'
require_relative 'computer'

class Game

  @@game = nil

  def self.start_game(player, computer)
    @@game = Game.new(player, computer)
  end

  def self.current_game
    @@game
  end


  RULES = {
    rock:     {rock: :draw, paper: :lose, scissors: :win},
    paper:    {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player, :computer, :rules

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result(player_weapon, computer_weapon)
    RULES[player_weapon][computer_weapon]
  end

end
