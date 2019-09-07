require_relative './player'
class Game

RULES = { rock: 'scissors', paper: 'rock', scissors: 'paper'}

attr_reader :player1
# attr_accessor :rand_seed
  def initialize(player1)
    @player1 = player1
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
  #   srand(@rand_seed || randomization_algorithm)
    [:scissors, :rock, :paper].sample
  end
  #
  def winner_is
    if RULES[computer_guess].include?(@player1.tool)
      'Computer wins'
    elsif RULES[(@player1.tool).to_sym].include?(computer_guess.to_s)
      'Player wins'
    else
      'Tie! Try again'
    end
  end

end
