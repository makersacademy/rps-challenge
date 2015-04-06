require_relative './rule_book'

class AIPlayer
  include RuleBook
  attr_reader :name, :game

  def initialize game = :standard
    @name = 'R1D1'
    @game = game
  end

  def choice
    rules(game).sample
  end
end