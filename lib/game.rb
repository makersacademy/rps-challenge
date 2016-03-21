class Game

  attr_reader :player , :opponent_choice

  WEAPONS = [:rock, :paper, :scissors]
  WINS = {rock: :scissors,
          paper: :rock,
          scissors: :paper}

  def initialize(player)
    @player = player
  end

  def computer_choice
    @opponent_choice = WEAPONS.sample
  end

  def game_result
    return :tie if @player.choice == opponent_choice
    return :win if WINS[@player.choice] == opponent_choice
    :lose
  end

end
