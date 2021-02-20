class Game
  attr_reader :player1
  WEAPONS = ["rock", "paper", "scissors"]

  def initialize(player1)
    @player1 = player1
  end

  def self.create(player1)
    @game = Game.new(player1)
  end
  
  def self.instance
    @game
  end

  def self.choose_weapon(weapon)
    @game.player1.equip(weapon)
  end 

  def self.duel
    pc_weapon = WEAPONS.sample    
    if @game.player1.weapon == pc_weapon
      :draw
    elsif @game.player1.weapon == "rock" && pc_weapon == "scissors"
      :win
    elsif @game.player1.weapon == "paper" && pc_weapon == "rock"
      :win
    elsif @game.player1.weapon == "scissors" && pc_weapon == "paper"
      :win
    else 
      :lost
    end 
  end
end 
