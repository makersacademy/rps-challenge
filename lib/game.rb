class Game

  attr_accessor :user_choice, :computer_choice

  def self.instance
    @game
  end

  def self.create(user_choice)
    @game = Game.new(user_choice)
  end

  def initialize(user_choice)
    @user_choice = user_choice
  end

  def random_rps
    ["Rock", "Paper", "Scissors"].sample
  end

  def compare
    @computer_choice = random_rps

    if @user_choice == @computer_choice
      return :tie
    elsif @user_choice == "Rock" && @computer_choice == "Scissors"
      return :win
    elsif @user_choice == "Scissors" && @computer_choice == "Paper"
      return :win
    elsif @user_choice == "Paper" && @computer_choice == "Rock"
      return :win
    else
      return :lose
    end
  end

end
