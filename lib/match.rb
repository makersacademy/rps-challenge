class Match
  attr_reader :player_one_move, :player_two_move
  RANDOM_MOVE = ['Rock', 'Scissors', 'Paper'].sample

  def initialize(player_one_move, player_two_move = RANDOM_MOVE)
    @players_moves = [player_one_move, player_two_move]
    @message = nil
  end

  def match_decider 
    @message = nil

    if rock_vs_scissors?
      @message = 'Rock beats Scissors. ' + winner
    end
  end

  def show_message
    @message
  end

  private

  def rock_vs_scissors?
    (@players_moves & ['Rock', 'Scissors']).any?
  end

  def winner
    @players_moves[0] == 'Rock' ? 'You win!' : 'You lose!'
  end
    
end
