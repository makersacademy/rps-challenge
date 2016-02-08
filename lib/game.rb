require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
   @player1 = player1
   @player2 = player2
  end

  def result(option1, option2)
      if option1 == "Rock" && option2 == "Paper"
        "#{@player1.name} Chose Rock, #{@player2.name} Chose Paper : #{@player2.name} Wins"
      elsif option1 == "Rock" && option2 == "Scissors"
        "#{@player1.name} Chose Rock, #{@player2.name} Chose Scissors : #{@player1.name} Wins"
      elsif option1 == "Paper" && option2 == "Rock"
        "#{@player1.name} Chose Paper, #{@player2.name} Chose Rock : #{@player1.name} Wins"
      elsif option1 == "Paper" && option2 == "Scissors"
        "#{@player1.name} Chose Paper, #{@player2.name} Chose Scissors : #{@player2.name} Wins"
      elsif option1 == "Scissors" && option2 == "Rock"
        "#{@player1.name} Chose Scissors, #{@player2.name} Chose Rock : #{@player2.name} Wins"
      elsif option1 == "Scissors" && option2 == "Paper"
        "#{@player1.name} Chose Scissors, #{@player2.name} Chose Paper : #{@player1.name} Wins"
      else
        "It's a draw"
      end
  end

end
