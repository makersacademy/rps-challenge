require_relative 'computer'

class Game
  attr_reader :player , :choice, :outcome
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player)
    @player = player
    @rules = RULES
    @outcome = nil
    @computer = Computer.new
  end

  def play(choice)
    # @outcome = (choice.to_sym == @computer.weapon) ? :draw : :win
    player_choice = choice.to_sym
    computer_choice = @computer.weapon
    @outcome = if (player_choice == :rock and computer_choice == :scissors) or
                  (player_choice == :paper and computer_choice == :rock) or
                  (player_choice == :scissors and computer_choice == :paper)
                  :win
                elsif player_choice == computer_choice
                  :draw
                else
                  :lose
               end

  end

end
