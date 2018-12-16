class Result

  attr_reader :comp_hand, :weapon, :game_result

  def initialize(weapon)
    hands_arr = ['👊','🤚','✌️']
    @comp_hand = hands_arr.sample
    @weapon = weapon
    @game_result = ['Draw']
    eval
  end

  def eval
    if @weapon == @comp_hand
      draw
    elsif @weapon == '👊' && @comp_hand == '✌️'
      playerbeatscomp
    elsif @weapon == '👊' && @comp_hand == '🤚'
      compbeatsplayer
    elsif @weapon == '✌️' && @comp_hand == '🤚'
      playerbeatscomp
    elsif @weapon == '✌️' && @comp_hand == '👊'
      compbeatsplayer
    elsif @weapon == '🤚' && @comp_hand == '👊'
      playerbeatscomp
    elsif @weapon == '🤚' && @comp_hand == '✌️'
      compbeatsplayer
    end
  end

  def compbeatsplayer
    @game_result = ['You lose']
  end

  def playerbeatscomp
    @game_result = ['You Win']
  end

  def draw
    @game_result
  end

end
