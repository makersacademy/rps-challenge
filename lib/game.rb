class Game
  attr_reader :player, :computer, :winner

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winner = nil
  end

  def random_choice
    ["Rock", "Paper", "Scissors"].sample
  end

  def set_winner(player, computer)
    if player.choice == "Rock" && computer.choice == "Scissors"
      @winner = player
    elsif player.choice == "Scissors" && computer.choice == "Paper"
      @winner = player
    elsif player.choice == "Paper" && computer.choice == "Rock"
      @winner = player
    elsif player.choice == "Scissors" && computer.choice == "Rock"
      @winner = computer
    elsif player.choice == "Paper" && computer.choice == "Scissors"
      @winner = computer
    elsif player.choice == "Rock" && computer.choice == "Paper"
      @winner = computer
    else
      @winner = nil
    end
  end
end
