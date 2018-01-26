require_relative 'player'
require_relative 'computer'

class Game

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  RULES = { ROCK: [:SCISSORS, :LIZARD],
            PAPER: [:ROCK, :SPOCK],
            SCISSORS: [:PAPER, :LIZARD],
            LIZARD: [:PAPER, :SPOCK],
            SPOCK: [:ROCK, :SCISSORS] }

  attr_reader :player, :computer, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def rps
    computer.makes_choice
    return @result = :draw if player.choice == computer.choice
    @result = (RULES[player.choice].include? computer.choice) ? :win : :lose
  end

end
