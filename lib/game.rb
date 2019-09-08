require_relative './player'
class Game

  RULES = { rock: 'scissors', paper: 'rock', scissors: 'paper' }

  attr_reader :player1, :opponent_choice

  def initialize(player1)
    @player1 = player1
    @opponent_choice = nil
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  # def randomization_algorithm
  #   rand 2345678
  # end
  #
  def computer_guess
    choice = [:scissors, :rock, :paper].sample
    @opponent_choice = choice
  end

  def winner_is
    if RULES[@opponent_choice].include?(@player1.tool)
      'Computer wins'
    elsif RULES[@player1.tool.to_sym].include?(@opponent_choice.to_s)
      'Player wins'
    else
      'Tie! Try again'
    end
  end
end
