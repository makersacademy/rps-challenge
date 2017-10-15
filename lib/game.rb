require_relative 'computer'

class Game

  attr_reader :player_1, :computer

  def initialize(player, computer = Computer.new)
    @player_1 = player
    @computer = computer
    @wins = {  "rock" => 'scissors',
                "paper" => "rock",
                "scissors" => "paper"}
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def results(player_choice, opponent = computer.choice)
    return 'You drew!' if player_choice == opponent
    return 'You won!'  if @wins[player_choice] == opponent
    return 'You lose!' if @wins[opponent] == player_choice
  end

end
