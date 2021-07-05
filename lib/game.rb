require_relative './computer'

class Game

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def result
    computer_turn = @computer.computer_turn
    player_turn = @player.chosen_item
    return "It's a draw!" if player_turn == computer_turn
    return "#{@player.name} wins!" if RULES[player_turn] == computer_turn
    "#{@player.name} loses!"
  end
end
