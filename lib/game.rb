require 'Forwardable'

class Game

  extend Forwardable

  attr_reader :player1, :player2, :rules, :winner, :round, :weapons

  def initialize(player1, player2, weapons_klass)
    @player1 = player1
    @player2 = player2
    @weapons = weapons_klass
    @winner = nil
    @round = 1
  end

  def_delegator :@player1, :name, :name1
  def_delegator :@player2, :name, :name2

  def_delegator :@player1, :choice, :choice1
  def_delegator :@player2, :choice, :choice2

  def_delegator :@player1, :score, :score1
  def_delegator :@player2, :score, :score2

  def_delegator :@player1, :rock, :rock
  def_delegator :@player1, :paper, :paper
  def_delegator :@player1, :scissors, :scissors

  def_delegator :@weapons, :result, :result

  def outcome
    weapons.compare(choice1, choice2)
    find_winner
    round_count
    add_score
  end

  def game_over?
    score1 == 5 || score2 == 5
  end

  private

  def find_winner
    if result == :draw
      @winner = result
    elsif result == choice1
      @winner = @player1
    else
      @winner = @player2
    end
  end

  def round_count
    @round += 1
  end

  def add_score
    @winner.add_score unless @winner == :draw
  end

end
