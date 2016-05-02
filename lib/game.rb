require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player_1, :player_2
  LAW = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
  WEAPONS = ["rock", "paper", "scissors"]

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def result
    return :drew if (@player_1.weapon == @player_2.weapon)
    return :win if (LAW[@player_1.weapon] == @player_2.weapon)
    :lose
  end

end
