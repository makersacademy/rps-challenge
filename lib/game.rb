class Game

  attr_reader :player1, :option1, :player2, :option2

  def initialize(player1, option1, player2, option2)
    @player1 = player1
    @option1 = option1
    @player2 = player2
    @option2 = option2
  end

  def play
    win
  end

  private

  def win
    case
    when @option1 == "scissors" && @option2 == "paper"    then  "#{@player1} wins!"
    when @option1 == "scissors" && @option2 == "rock"     then  "#{@player2} wins!"
    when @option1 == "rock"     && @option2 == "scissors" then  "#{@player1} wins!"
    when @option1 == "rock"     && @option2 == "paper"    then  "#{@player2} wins!"
    when @option1 == "paper"    && @option2 == "scissors" then  "#{@player2} wins!"
    when @option1 == "paper"    && @option2 == "rock"     then  "#{@player1} wins!"
    when @option1 == @option2 then "This is a tie!"
    end
  end
end
