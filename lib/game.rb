require_relative 'computer'

class Game

  # RULES = { :rock  { :rock => :draw
  #                       :paper => :loser
  #                       :scissors => :win }
  #           :paper    { :rock => :win
  #                       :paper => :draw
  #                       :scissors => :lose }
  #           :scissors { :rock => :lose
  #                       :paper => :win
  #                       :scissors => :draw }}

  attr_reader :player_1

  def initialize(player, computer = Computer.new)
    @player_1 = player
    @computer_choice = computer.choice
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end


end
