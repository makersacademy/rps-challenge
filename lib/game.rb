require_relative 'player'

class Game

  attr_reader :game, :player_1, :choices, :option, :result

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
    @choices = [:rock, :paper, :scissors]
    @option = nil
    #@result = result
  end

  def player_1_name
    @player_1.name
  end

  def player_1_choice(option)
    raise "Oops, that doesn't exist! Please choose rock, paper or scissors." unless option == "rock" || option == "paper" || option == "scissors"
    @option = option.to_sym
  end

  def computer_choice
    @choices.sample
  end

  def winning?
    player_1_choice == :rock && computer_choice == :scissors || player_1_choice == :scissors && computer_choice == :paper || player_1_choice == :paper && computer_choice == :rock
    #don't think player_1_choice is right here
  end

  def tied?
    player_1_choice == computer_choice
    #or here
  end

  def result
    if winning?
      "You won!"
    elsif tied?
      "It's a draw!"
    else
      "You lost!"
    end
  end
end
