require_relative 'player'
require_relative 'computer'

class Game

  def self.start_game(player, computer)
    @@game = Game.new(player, computer)
  end

  def self.current_game
    @@game
  end


  RULES = {
    rock:     {rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose},
    paper:    {rock: :win, paper: :draw, scissors: :lose, lizard: :lose, spock: :win},
    scissors: {rock: :lose, paper: :win, scissors: :draw, lizard: :lose, spock: :lose},
    lizard:   {rock: :lose, paper: :win, scissors: :lose, lizard: :draw, spock: :win},
    spock:    {rock: :win, paper: :lose, scissors: :win, lizard: :lose, spock: :draw}
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
