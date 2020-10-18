class ComputerMove
  attr_accessor :rps, :computer_move, :players_move

  def initialize(players_move)
    @players_move = players_move
    @rps = ['rock', 'paper', 'scissors']
    make_move
  end
  
  def make_move 
    @computer_move = @rps.sample
  end

  def who_wins
    case @computer_move

    when 'rock'
      if @players_move == 'paper'
        "You Win!!"
      else
        "Computer Wins :("
      end
    when 'paper'
      if @players_move == 'scissors'
        "You Win!!"
      else
        "Computer Wins :("
      end
    when 'scissors'
      if @players_move == 'rock'
        "You Win!!"
      else
        "Computer Wins :("
      end
    end
  end
end
