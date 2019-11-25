require_relative 'player'

class Game
  attr_reader :value

  def initialize
    @value = ["rock", "paper", "scissors"]
  end

  def robot_option
    @value.sample
  end

  def rockpaperscissors
    'Rock beats scissors. Anh wins!'
    # if choose_option == value[1] && robot_option == value[0]
  end
end
