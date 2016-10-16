require_relative 'player'

class Game

  attr_reader :game, :player_1, :choices, :option

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
    @choices = ["rock", "paper", "scissors"]
    @option = nil
  end

  def player_1_name
    @player_1.name
  end

  def player_1_choice(option)
    raise "Oops, that doesn't exist! Please choose rock, paper or scissors." unless option == "rock" || option == "paper" || option == "scissors"
    @option = option
  end

  def player_1_choice_final
    @option
  end

  def computer_choice
    @choices.sample
  end

  # def winning
  #   case
  #   when player_1_choice_final == "rock" && computer_choice == :scissors
  #     "Player 1 wins!"
  # #continues for other circumstances
  #   end
  # end

end
