require_relative 'computer'

class Game
  attr_reader :player, :choice, :outcome
  WEAPON = [:rock, :paper, :scissors, :spock , :lizard]

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  def initialize(player)
    @player = player
    @rules = RULES
    @computer = Computer.new
  end

  def play(choice)
    player_choice = choice.to_sym
    computer_choice = @computer.weapon
    ans = @rules[player_choice]

    if player_choice == computer_choice
      :draw
    elsif ans.include?(computer_choice)
      :win
    else
      :lose
    end
  end
end
