class Game

  attr_reader :player_one

  def self.start_game(player1)
    @current_game = Game.new(player1)
  end

  def self.current_game
    @current_game
  end

  def initialize(player1)
    @player_one = player1
    @computer = ["Rock", "Paper", "Scissors"].sample
    @choice = ''
  end

  def play(choice)
    @choice = choice
  end

  def winner
    if @choice == @computer
      "Draws!"
    elsif @choice == "Rock" && @computer == "Scissors"
      "Wins!"
    elsif @choice == "Scissors" && @computer == "Paper"
      "Wins!"
    elsif @choice == "Paper" && @computer == "Rock"
      "Wins!"
    else
      "Loses!"
    end
  end
end
