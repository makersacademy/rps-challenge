class Game

  attr_accessor :player, :name
  attr_reader :computer_choice, :winner

  def initialize
    @player = nil
    @name = name
    @computer_choice = nil
    @winner = nil
  end

  RULES = {"rock" => ["scissors"], "scissors" => ["paper"], "paper" => ["rock"]}

  def choose_randomly
    @computer_choice = ["rock", "paper", "scissors"].shuffle.sample
  end

  def result
    choose_randomly
    @winner = @player.name if RULES[@player.choice].include? @computer_choice
    @winner = "Computer wins!" if RULES[@computer_choice].include? @player.choice
    @winner = "You tied with the computer. Try again!" if @player.choice == @computer_choice
  end

end