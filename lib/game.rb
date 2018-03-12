class Game
  attr_reader :player, :computer
  CHOICES = [:rock, :paper, :scissors]
  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

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
    player_choice, computer_choice = @player.choice, @computer.choice
    if RULES[player_choice] == computer_choice
      "#{@player.name}, you win!"
    elsif RULES[computer_choice] == player_choice
      "#{@player.name}, you lose!"
    else
      "Draw game!"
    end
  end

end
