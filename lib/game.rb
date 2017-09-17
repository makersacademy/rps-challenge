require_relative 'computer'

class Game

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :player_1, :player_1_choice, :computer, :computer_choice

  def initialize(player_1_name, player_1_choice, computer = Computer.new)
    @player_1 = player_1_name
    @player_1_choice = player_1_choice.to_sym
    @computer = computer
  end

  def self.create(player_1_name, player_1_choice)
    @game = Game.new(player_1_name, player_1_choice)
  end

  def self.instance
    @game
  end

  def result(computer_choice = @computer.choice)
    @computer_choice = computer_choice
    if @player_1_choice == @computer_choice
      :draw
    else
      RULES.to_enum.include?([@player_1_choice, @computer_choice]) ? :win : :lose
    end
  end
end
