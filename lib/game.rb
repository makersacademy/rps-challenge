require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player_1, :computer

  def initialize(player, computer = Computer.new)
    @player_1 = player
    @computer = computer
    @moves = {  "Rock" => 'Scissors',
                "Paper" => "Rock",
                "Scissors" => "Paper" }
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def result(player_choice, opponent = computer.choice)
    return 'You drew!' if player_choice == opponent
    return 'You won!'  if @moves[player_choice] == opponent
    return 'You lose!' if @moves[opponent] == player_choice
  end

end
