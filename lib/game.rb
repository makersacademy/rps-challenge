class Game

attr_reader :comp_choice_value, :player_choice, :computer_choice, :choices

  def initialize
    @computer_choice = nil
    @choices = [:rock, :paper, :scissors]
    generate_computer_choice(rand_choice)
  end

  def set_player_choice(choice)
    #setting player choice to a value
    @player_choice = choice.to_i #choices[(choice.to_i)-1]
  end

  def rand_choice
    #Computers choice as a value
    @comp_choice_value = 1 + rand(3)
  end

  def generate_computer_choice(num)
    #used purely for printing out value as string in outcome
    @computer_choice = choices[num-1].to_s.capitalize
  end

  def outcome_value
    @comp_choice_value - @player_choice
  end

  def player_wins
  	if outcome_value == -2 || outcome_value == 1
  	   :false
    elsif outcome_value == -1 || outcome_value == 2
  	   :true
    else
  	   :tie
    end
  end

end
