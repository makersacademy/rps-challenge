class Game
  attr_reader :winner

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player,computer)
    @game = Game.new(player,computer)
  end

  def self.instance
    @game
  end

  def winner
    player = @player.attack_method
    computer = @computer.attack_method
    if player == computer
      "Draw"
    elsif player == "Rock"
      if computer == "Scissors"
        @player.add_score
        @player
      else
        @computer.add_score
        @computer
      end
    elsif player == "Scissors"
      if computer == "Paper"
        @player.add_score
        @player
      else
        @computer.add_score
        @computer
      end
    elsif player == "Paper"
      if computer == "Rock"
        @player.add_score
        @player
      else
        @computer.add_score
        @computer
      end
    else
      "SOMETHING WENT WRONG!"
    end
  end
end
