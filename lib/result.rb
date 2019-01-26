class Result

  attr_reader :game_result

  def initialize(weapon, enemy)
    @computer_hand = enemy
    @weapon = weapon
    evaluation
  end

  def evaluation
    if @weapon == @computer_hand
      'Draw'
    elsif @weapon == '👊' && @computer_hand == '✌️'
      'You win'
    elsif @weapon == '👊' && @computer_hand == '🤚'
      'You lose'
    elsif @weapon == '✌️' && @computer_hand == '🤚'
      'You win'
    elsif @weapon == '✌️' && @computer_hand == '👊'
      'You lose'
    elsif @weapon == '🤚' && @computer_hand == '👊'
      'You win'
    elsif @weapon == '🤚' && @computer_hand == '✌️'
      'You lose' 
    end
  end
end
