require_relative 'computer'

class Game
	RULES = [['scissors', 'paper'], ['paper', 'rock'], ['rock', 'scissors']]

  attr_reader :player_choice, :computer_choice

  def initialize(computer = Computer.new)  
  	@computer = computer
  	@computer_choice = @computer.choice
  end    
  
  def player(tool)
  	@player_choice = tool
  end

  def result
  	return :draw if draw?
  	RULES.include?([player_choice, computer_choice]) ? :win : :loser
  end

  private

  def draw?
  	player_choice == computer_choice
  end	
end