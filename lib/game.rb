require_relative 'player.rb'
require_relative 'computer.rb'

class Game

  attr_accessor :player, :computer

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end


  def play
   return "Player 1 won!" if @player.weapon == "Scissors" && @computer.random_weapon == "Paper"
   return "Player 1 won" if @player.weapon == "Paper" && @computer.random_weapon == "Rock"
   return "Player 1 won" if @player.weapon == "Rock" && @computer.random_weapon == "Scissors"
   return "Draw" if @player.weapon == @computer.random_weapon
   "The computer won!"
  end
end
#A game will create one player and one computer
#A player will be created with a choice of weapons
#A computer will be created with a choice of weapons
#Weapons will be created


#Methods win, lose and draw
