class Game

  attr_reader :weapon

  def initialize(player_weapon)
    @player_weapon = player_weapon
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end

  def fight
    if @player_weapon == @weapon
      :draw
    elsif win
      :win
    else
      :lose
    end
  end

  private

  def win
    true if (@player_weapon == "Rock" and @weapon == "Scissors") or (@player_weapon == "Paper" and @weapon == "Rock") or (@player_weapon == "Scissors" and @weapon == "Paper")
  end
end
