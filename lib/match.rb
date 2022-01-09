class Match
  attr_reader :players_moves

  def initialize(player_one_move, player_two_move = random_move)
    @players_moves = [player_one_move, player_two_move]
  end

  def decider 
    @message = 'Rock beats Scissors. ' + winner('Rock') if rock_vs_scissors?
    @message = 'Scissors beats Paper. ' + winner('Scissors') if scissors_vs_paper?
    @message = 'Paper beats Rock. ' + winner('Paper') if paper_vs_rock?
  end

  def show_message
    @message
  end

  private

  def rock_vs_scissors?
    @players_moves.sort == ['Rock', 'Scissors']
  end

  def scissors_vs_paper?
    @players_moves.sort == ['Paper', 'Scissors']
  end

  def paper_vs_rock?
    @players_moves.sort == ['Paper', 'Rock']
  end

  def winner(move)
    @players_moves[0] == move ? 'You win!' : 'You lose!'
  end

  def random_move
    ['Rock', 'Scissors', 'Paper'].sample
  end
end
