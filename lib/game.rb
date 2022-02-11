class Game

  attr_reader :opponent_choice

  def initialize
    @opponent_choice
  end
  
  def turn(player_choice)

    @opponent_choice = generate_opponent_choice

    if player_choice == @opponent_choice
      'Draw'
    elsif player_choice == 'Rock' && @opponent_choice == 'Paper'
      'Lose'
    elsif player_choice == 'Paper' && @opponent_choice == 'Scissors'
      'Lose'
    elsif player_choice == 'Scissors' && @opponent_choice == 'Rock'
      'Lose'
    else
      'Win'
    end

  end

  private
  
  def generate_opponent_choice
    @opponent_choice = ['Rock', 'Paper', 'Scissors'].sample
  end

end
