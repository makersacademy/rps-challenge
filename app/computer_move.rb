class ComputerMove
  attr_accessor :rps, :computer_move, :players_move

  def initialize(players_move)
    @players_move = players_move
    @rps = ['Rock', 'Paper', 'Scissors']
    make_move
  end
  
  def make_move 
    @computer_move = @rps.sample
  end

  def who_wins
    case @computer_move

    when 'Rock'
      if @players_move == 'Paper'
        "You Win!!"
      else
        "Computer Wins :("
      end
    when 'Paper'
      if @players_move == 'Scissors'
        "You Win!!"
      else
        "Computer Wins :("
      end
    when 'Scissors'
      if @players_move == 'Rock'
        "You Win!!"
      else
        "Computer Wins :("
      end
    end
  end
end
