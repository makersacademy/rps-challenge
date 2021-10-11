class Game
  attr_reader :player, :computer

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(player, computer)
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
    if @player.weapon.name_of_weapon == @computer.choice
      p @computer.choice
      p @player.weapon.name_of_weapon
      "It's a draw"
    elsif @player.weapon.name_of_weapon == "rock" && @computer.choice == "scissors"
      p @computer.choice
      p @player.weapon.name_of_weapon
      @player.name + " is the winner"
    elsif  @player.weapon.name_of_weapon == "paper" && @computer.choice == "rock"
      @player.name + " is the winner"
    elsif  @player.weapon.name_of_weapon == "scissors" && @computer.choice == "paper"
      @player.name + " is the winner"
    else
      "Computer is the winner"
    end
  end
end 