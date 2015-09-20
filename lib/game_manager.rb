#require_relative 'player'

class Game_manager

  attr_accessor :current_round

  def initialize
    @current_round = 0.to_i
  end

  #refactor/improve !
  def new_round

    @current_round += 1

    if $choices.values[0] == $choices.values[1]
      return 'DRAW'
    elsif ($choices.values[0]  == "rock") && ($choices.values[1] == "paper")
      return $players[$choices.keys[1]]
    elsif ($choices.values[0]  == "rock") && ($choices.values[1] == "scissors")
      return $players[$choices.keys[0]]
    elsif ($choices.values[0]  == "paper") && ($choices.values[1] == "rock")
      return $players[$choices.keys[0]]
    elsif ($choices.values[0]  == "paper") && ($choices.values[1] == "scissors")
      return $players[$choices.keys[1]]
    elsif ($choices.values[0]  == "scissors") && ($choices.values[1] == "rock" )
      return $players[$choices.keys[1]]
    elsif ($choices.values[0]  == "scissors") && ($choices.values[1] == "paper")
      return $players[$choices.keys[0]]
    end
  end

  def cpu_choice
    ["rock", "paper", "scissors"].sample
  end

end
