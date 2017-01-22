require_relative 'player'
class Game

  attr_reader :player1, :player2, :option1, :option2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_name = player1.name
    @option1 = player1.option
    @player2_name = player2.name
    @option2 = player2.option
  end

  def play
    win
  end

  private

  def win
    case
    when @player1_name.empty? || @player2_name.empty? then "Sorry, missing player(s)"
    when @option1 == "scissors" && @option2 == "paper"    then  "#{@player1_name} wins!"
    when @option1 == "scissors" && @option2 == "rock"     then  "#{@player2_name} wins!"
    when @option1 == "rock"     && @option2 == "scissors" then  "#{@player1_name} wins!"
    when @option1 == "rock"     && @option2 == "paper"    then  "#{@player2_name} wins!"
    when @option1 == "paper"    && @option2 == "scissors" then  "#{@player2_name} wins!"
    when @option1 == "paper"    && @option2 == "rock"     then  "#{@player1_name} wins!"
    when @option1 == @option2 then "This is a tie!"
    end
  end
end
