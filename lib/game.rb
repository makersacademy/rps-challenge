class Game

  attr_reader :player1, :player2, :result
  ROCK = 'Rock'
  PAPER = 'Paper'
  SCISSORS = 'Scissors'

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def assess_result
    player1_move = @player1.move
    player2_move = @player2.move

    if player1_move == ROCK
      case player2_move
      when SCISSORS
        @result = "#{@player1.name} Wins!"
      when PAPER
        @result = "#{@player2.name} Wins!"
      else ROCK
        @result = "It's a tie"
      end
    elsif player1_move == PAPER
      case player2_move
      when ROCK
        @result = "#{@player1.name} Wins!"
      when SCISSORS
        @result = "#{@player2.name} Wins!"
      else PAPER
        @result = "It's a tie"
      end
    else player1_move == SCISSORS
      case player2_move
      when PAPER
        @result = "#{@player1.name} Wins!"
      when ROCK
        @result = "#{@player2.name} Wins!"
      else SCISSORS
        @result = "It's a tie"
      end
    end
  end
end