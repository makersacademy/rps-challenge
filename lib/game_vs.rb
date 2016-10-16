require_relative 'player'

class GameVs
  class << self
    attr_accessor :store
  end

  RULES = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }

  attr_reader :player1, :player2, :player1_choice, :player2_choice

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def choice
    @player1_choice = @player1.weapon
    @player2_choice = @player2.weapon
  end

  def result
    return :draw_vs if @player1_choice == @player2_choice
    RULES[@player1_choice] == @player2_choice ? :win_vs : :lose_vs
  end
end
