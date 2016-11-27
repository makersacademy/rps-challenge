class Game

  WIN_OR_LOSE = {
    rock: {:rock => :draw, :paper => :lose, :scissors => :win},
    paper: {:paper => :draw, :scissors => :lose, :rock => :win},
    scissors: {:scissors => :draw, :rock => :lose, :paper => :win}
  }

  def initialize(hand_choice)
    @player_choice = hand_choice["player_choice"]
    @computer_choice = hand_choice["computer_choice"]
  end

  def result
    WIN_OR_LOSE[@player_choice][@computer_choice]
  end

end
