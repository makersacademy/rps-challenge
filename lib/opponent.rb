class Opponent

  attr_accessor :opponent_move, :who_wins

  def initialize
    @opponent_move = nil
    @who_wins = nil
  end

  def choose_selected_move(move)
    @opponent_move = move
  end

  def choose_random_move
    @opponent_move = ['rock', 'paper', 'scissors'].sample
  end

  def player_weapon(weapon)
    @player_weapon = weapon
  end

  def who_wins
    if @player_weapon == @opponent_move
      @who_wins = "It's a tie!"
    elsif @player_weapon == 'rock' && @opponent_move == 'scissors'
      @who_wins = 'You win!'
    elsif @player_weapon == 'paper' && @opponent_move == 'rock'
      @who_wins = 'You win!'
    elsif @player_weapon == 'scissors' && @opponent_move == 'paper'
      @who_wins = 'You win!'
    else
      @who_wins = 'You lose!'
    end
    return @who_wins
  end
end
