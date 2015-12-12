require 'Forwardable'

class Game

  extend Forwardable

  attr_reader :player1, :player2, :rules, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @rules = {rock: :scissors,
              paper: :rock,
              scissors: :paper}
    @winner = nil
  end

  def_delegator :@player1, :name, :name1
  def_delegator :@player2, :name, :name2

  def_delegator :@player1, :choice, :choice1
  def_delegator :@player2, :choice, :choice2

  def_delegator :@player1, :rock, :rock
  def_delegator :@player1, :paper, :paper
  def_delegator :@player1, :scissors, :scissors

  def outcome
    @winner = nil
    draw ? @winner = 'draw' : who_won
  end

  private

  def draw
    choice1 == choice2
  end

  def who_won
    rules.each do |k,v|
      @winner = name1 if choice1 == k && choice2 == v
    end
    @winner == nil ? @winner = name2 : nil
  end

end
