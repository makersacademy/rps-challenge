require_relative './player'
class Game
  attr_reader :player1, :player2, :game, :player2_selection, :player1_selection
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1.name
    @player2 = player2.name
  end

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end 

  def computer_choice
    @player2_selection = ['rock', 'paper', 'scissors'].sample
  end

  def player1_choice(input)
    @player1_selection = input 
  end

end