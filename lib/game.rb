require './lib/player'

class Game
  attr_reader :player
  
  WEAPONS = [:rock, :paper, :scissors]
  
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player, choices = WEAPONS)
    @player = player
    @choices = choices
  end

  def make_choice
    @choices.sample
  end

  def give_result(computer_choice)
    return :draw if @player.choice.to_sym == computer_choice.to_sym
    return :win if RULES[player.choice.to_sym] == computer_choice.to_sym
    :loss
  end
end