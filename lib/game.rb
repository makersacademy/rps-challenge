require 'Forwardable'

class Game

  extend Forwardable

  attr_reader :player1, :player2, :rules, :winner, :round

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @rules = {rock: :scissors,
              paper: :rock,
              scissors: :paper}
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

  def outcome
    @winner = nil
    draw ? @winner = 'draw' : who_won
    @round += 1
    add_score
  end

  private

  def draw
    choice1 == choice2
  end

  def who_won
    rules.each do |k,v|
      @winner = @player1 if choice1 == k && choice2 == v
    end
    @winner == nil ? @winner = @player2 : nil
  end

  def add_score
    @winner.add_score unless @winner == 'draw'
  end

end
