require_relative './computer.rb'

class Game
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @rules = { "rock" => "scissors",
              "paper" => "rock",
              "scissors" => "paper" }
  end

  def self.create(player)
    @current_game = Game.new(player)
  end

  def self.instance
    @current_game
  end

  def result(player_choice, choice = computer.choice)
    return "Drew" if player_choice == choice 
    return "Won" if @rules[player_choice] == choice 
    return "Lost" if @rules[choice] == player_choice
  end
end
