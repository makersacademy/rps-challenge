class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player1
  
  def initialize(player)
    @player1 = player
  end

  def display_choice
    if player1.choice == nil
      "Select ROCK, PAPER or SCISSORS"
    else
      "You have chosen: #{player1.choice}"
    end
  end

  #
  # def win_or_lose
  #   if @computer.choice == @game.player1.choice
  #   You draw!
  #   elsif @computer.choice == Paper && @game.player1.choice == Scissors
  #   You have won!
  #   elsif @computer.choice == Scissors && @game.player1.choice == Paper
  #   You have lost!
  #   elsif @computer.choice == Rock && @game.player1.choice == Paper
  #   You have won!
  #   elsif @game.player1.choice == Rock && @computer.choice == Scissors
  #   You have won!
  # end

end
