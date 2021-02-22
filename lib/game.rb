require 'player'

class Game
  attr_reader :player1, :player2
  WEAPONS = ["rock", "paper", "scissors"]

  def initialize(player1, player2 = Player.new("Enemy"))
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1)
    @game = Game.new(player1)
  end
  
  def self.instance
    @game
  end

  def self.choose_weapon(player, weapon = WEAPONS.sample )
    player.equip(weapon)
  end 

  def self.duel  
    if @game.player1.weapon == @game.player2.weapon
      :draw
    elsif @game.player1.weapon == "rock" && @game.player2.weapon == "scissors"
      :win
    elsif @game.player1.weapon == "paper" && @game.player2.weapon == "rock"
      :win
    elsif @game.player1.weapon == "scissors" && @game.player2.weapon == "paper"
      :win
    else 
      :lost
    end 
  end
end 
