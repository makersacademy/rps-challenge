class Game

  attr_reader :result
# #
#   def initialize(computer = Computer.new)
#     @computer = computer
#   end

  # def initialize
  #   @weapon = weapon
  #   @computer_choice = computer_choice
  # end

WINS = {rock: :scissors,
        paper: :rock,
        scissors: :paper}


  def result(weapon = @weapon, computer_choice = @computer_choice)
    if @weapon == @computer_choice
      :draw
    else WINS.to_include?([@weapon, @computer_choice]) ? win: :lose
      end
  end





end

# (weapon = @weapon, computer_choice = @computer_choice)
