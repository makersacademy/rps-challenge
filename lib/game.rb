class Game
  BEATEN_BY = { rock: :scissors, paper: :rock, scissors: :paper }
  attr_reader :player_pick, :computer_pick

  def initialize(player_pick, computer_pick)
    @player_pick = player_pick
    @computer_pick = computer_pick
  end

  def result
    if BEATEN_BY[player_pick] == computer_pick
      :win
    elsif BEATEN_BY[computer_pick] == player_pick
      :lose
    else
      :draw
    end
  end
end
