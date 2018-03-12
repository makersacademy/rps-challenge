class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
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
    player_weapon, computer_weapon = @player.weapon, @computer.weapon
    if RULES[player_weapon] == computer_weapon
      "#{@player.name}, you win!"
    elsif RULES[computer_weapon] == player_weapon
      "#{@player.name}, you lose!"
    else
      "It's a draw!"
    end
  end

end
