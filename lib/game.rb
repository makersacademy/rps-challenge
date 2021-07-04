
class Game
  attr_reader :player, :computer

  RULES = { Rock: :Scissors, Paper: :Rock, Scissors: :Paper }

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
    computer_choice = @computer.choice
    player_choice = @player.move
    if RULES[player_choice] == computer_choice
      "You won!"
    elsif RULES[computer_choice] == player_choice
      "You lost!"
    else
      "Draw!"
    end
  end
end
