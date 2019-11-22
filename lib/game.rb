

class Game

attr_reader :cchoice, :rpschoice, :player, :winner


  def initialize(rpschoice, player)
    @rpschoice = rpschoice
    @player = player
  end

  def computers_choice
  @cchoice = ["ROCK", "PAPER", "SCISSORS"].sample
end

def compare
computers_choice
  if @rpschoice == @cchoice
    @winner = "Nobody"
elsif @rpschoice == "ROCK" && @cchoice == "SCISSORS"
    @winner = @player
elsif @rpschoice == "ROCK" && @cchoice == "PAPER"
  @winner = "Computer"
elsif @rpschoice == "SCISSORS" && @cchoice == "PAPER"
@winner = @player
elsif @rpschoice == "SCISSORS" && @cchoice == "ROCK"
  @winner = "Computer"
elsif @rpschoice == "PAPER" && @cchoice == "ROCK"
  @winner = @player_1_name
elsif @rpschoice == "PAPER" && @cchoice == "SCISSORS"
  @winner = "Computer"
  end
end

end
