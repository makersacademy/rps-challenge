class RPS

  private

  attr_reader :rps

  def initialize
    @rps = ["rock", "paper", "scissors"]
    @result_player = []
  end

  def play
    rps.sample
  end

  def return 
  end
end




# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
# ```

# Hints on functionality

# - the marketeer should be able to enter their name before the game
# - the marketeer will be presented the choices (rock, paper and scissors)
# - the marketeer can choose one option
# - the game will choose a random option
# - a winner will be declared
