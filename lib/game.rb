

class Game

  attr_reader :cchoice, :rpschoice, :player, :winner


  def initialize(rpschoice, player)
    @rpschoice = rpschoice.upcase
    @player = player
  end


  def computers_choice
    ["SCISSORS", "ROCK", "PAPER"].sample
  end


  def choice_set
    @cchoice = computers_choice
  end


  def compare
    choice_set
    if @rpschoice == @cchoice
      @winner = "Nobody"
    elsif (@rpschoice == "ROCK" && @cchoice  == "SCISSORS") || (@rpschoice == "SCISSORS" && @cchoice == "PAPER") || (@rpschoice == "PAPER" && @cchoice == "ROCK")
      @winner = @player
    elsif (@rpschoice == "ROCK" && @cchoice == "PAPER") || (@rpschoice == "SCISSORS" && @cchoice == "ROCK") || (@rpschoice == "PAPER" && @cchoice == "SCISSORS")
      @winner = "Computer"
    end
  end

end
