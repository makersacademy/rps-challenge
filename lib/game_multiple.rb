class Gamemultiple

  attr_reader :choice, :choice_2, :player, :player_2, :winner


  def initialize(choice, choice_2, player, player_2)
    @choice = choice.upcase
    @choice_2 = choice_2.upcase
    @player_2 = player_2
    @player = player
  end

  def compare
    if @choice == @choice_2
      @winner = "Nobody"
    elsif (@choice == "ROCK" && @choice_2  == "SCISSORS") || (@choice == "SCISSORS" && @choice_2 == "PAPER") || (@choice == "PAPER" && @choice_2 == "ROCK")
      @winner = @player
    elsif (@choice == "ROCK" && @choice_2 == "PAPER") || (@choice == "SCISSORS" && @choice_2 == "ROCK") || (@choice == "PAPER" && @choice_2 == "SCISSORS")
      @winner = @player_2
    end
  end

end
