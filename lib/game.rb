class Game
  RULES = { rock: :scissors, scissors: :paper, paper: :rock }.freeze

  attr_reader :id, :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def play_game
    rock_paper_scissor(@player_one.weapon, @player_two.weapon)
  end

  private

  def rock_paper_scissor(wep_one, wep_two)
    if RULES[wep_one] == wep_two
      :win
    elsif RULES[wep_two] == wep_one
      :lose
    else
      :draw
    end
  end
end
