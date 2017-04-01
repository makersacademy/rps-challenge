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
    puts "#{player} #{computer}"
    if player == computer
      "Draw"
    elsif player == "Rock"
      if computer == "Scissors"
        @player
      else
        @computer
      end
    elsif player == "Scissors"
      if computer == "Paper"
        @player
      else
        @computer
      end
    elsif player == "Paper"
      if computer == "Rock"
        @player
      else
        @computer
      end
    else
      "SOMETHING WENT WRONG!"
    end
  end
end
