# frozen_literal_string: true

class Game
  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }.freeze

  def result(play_one, play_two)
    return :draw if play_one == play_two

    player_one_win?(play_one, play_two) ? :player_one : :player_two
  end

  private

  def player_one_win?(play_one, play_two)
    RULES[play_one] == play_two
  end
end
