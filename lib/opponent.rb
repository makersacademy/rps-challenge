class Opponent

  attr_accessor :opponent_move, :who_wins

  def initialize
    @opponent_move = nil
    @who_wins = nil
  end

  def choose_selected_move(move)
    @opponent_move = move
  end

  # def choose_random_move
  #   random_number = rand(3)
  #   if random_number == 0
  #     @opponent_move = 'rock'
  #   elsif random_number == 1
  #     @opponent_move = 'paper'
  #   elsif random_number == 2
  #     @opponent_move = 'scissors'
  #   end
  # end

  def choose_random_move
    @opponent_move = ['rock', 'paper', 'scissors'].sample
  end

  def player_weapon(weapon)
    @player_weapon = weapon
  end

  def who_wins
    if @player_weapon == @opponent_move
      @who_wins = "It's a tie!"
      return @who_wins
    elsif @player_weapon == 'rock' && @opponent_move == 'paper'
      @who_wins = 'You lose!'
      return @who_wins
    elsif @player_weapon == 'rock' && @opponent_move == 'scissors'
      @who_wins = 'You win!'
      return @who_wins
    elsif @player_weapon == 'paper' && @opponent_move == 'rock'
      @who_wins = 'You win!'
      return @who_wins
    elsif @player_weapon == 'paper' && @opponent_move == 'scissors'
      @who_wins = 'You lose!'
      return @who_wins
    elsif @player_weapon == 'scissors' && @opponent_move == 'rock'
      @who_wins = 'You lose!'
      return @who_wins
    elsif @player_weapon == 'scissors' && @opponent_move == 'paper'
      @who_wins = 'You win!'
      return @who_wins
    end

  end
end
