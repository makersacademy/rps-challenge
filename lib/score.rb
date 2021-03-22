class Score
  attr_reader :player_weapon, :opponent_weapon
  WIN = { 
  rock: :scissors,
  scissors: :paper,
  paper: :rock,
  }
  def initialize(player_weapon, opponent_weapon)
    @player_weapon = player_weapon
    @opponent_weapon = opponent_weapon
    @game = { @player_weapon.to_sym => @opponent_weapon.to_sym }
  end

  def calculate
    if @game <= WIN 
      :win
    elsif @player_weapon == @opponent_weapon
      :draw
    else
      :lose
    end
  end

end
