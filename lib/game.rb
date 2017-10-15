require_relative 'computer'
require_relative 'rules'

class Game
  attr_reader :player, :computer
  include Rules

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player)
    @current_game = Game.new(player)
  end

  def self.instance
    @current_game
  end

  def result(player_choice, choice = computer.choice)
    p Rules::RULES[player_choice]
    return "Drew" if player_choice == choice 
    return "Won" if Rules::RULES[player_choice].include?(choice)
    return "Lost" if Rules::RULES[choice].include?(player_choice)
  end
end
