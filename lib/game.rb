class Game

  attr_reader :choice, :random, :winner

  def self.create(choice)
    @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  def initialize(choice)
    @choice = choice
    @random = nil
    @winner = nil
  end

  def play
    random_option
    calculate_winner
  end

  private

  def random_option
    @random = ["Rock", "Paper", "Scissors"].sample
  end

  def calculate_winner
    if @choice == @random
    	@winner = "It's a tie!"
    elsif @choice == "Rock" && @random == "Scissors"
    	@winner = "You win!"
    elsif @choice == "Scissors" && @random == "Paper"
    	@winner = "You win!"
    elsif @choice == "Paper" && @random == "Rock"
    	@winner = "You win!"
    else
    	@winner = "Game wins!"
    end
  end

end
