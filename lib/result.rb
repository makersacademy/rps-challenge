class Result

  def initialize(weapon, enemy)
    @enemy = enemy
    @weapon = weapon
    eval
  end

  def eval
    if @weapon == @enemy
      'Draw'
    elsif @weapon == '👊' && @enemy == '✌️'
      'You win'
    elsif @weapon == '✌️' && @enemy == '🤚'
      'You win'
    elsif @weapon == '🤚' && @enemy == '👊'
      'You win'
    else
      'You lose'
    end
  end
end
