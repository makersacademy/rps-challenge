require_relative 'player'
require_relative 'computer'

class Game

  RULES =   {
  rock:     {rock: :draw, paper: :paper, scissors: :rock},
  paper:    {rock: :paper, paper: :draw, scissors: :scissors},
  scissors: {rock: :rock, paper: :scissors, scissors: :draw}
            }

  attr_reader :player_1_choice, :player_2_choice, :final_result

  def initialize(player_1, player_2)
      @player_1 = player_1
      @player_2 = player_2
  end


  def play
    @player_1_choice = @player_1.choice.to_sym
    @player_2_choice = @player_2.choice.to_sym
    @result = RULES[@player_1_choice][@player_2_choice]
    @final_result = result(@result)

  end

  private

  def result(result)
    if result == :draw
      "It's a draw!"
    elsif result == @player_1_choice
      "#{@player_1.name} wins!"
    else
      "#{@player_2.name} wins!"
    end
  end
end