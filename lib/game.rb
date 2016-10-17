require_relative 'player'
require_relative 'computer'

class Game
  class << self
    attr_accessor :store
  end

  RULES = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }

  attr_reader :player, :computer, :player_choice, :computer_choice

  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
  end

  def choice
    @player_choice = @player.weapon
    @computer_choice = @computer.pick
  end

  def result
    return :draw if @player_choice == @computer_choice
    RULES[@player_choice] == @computer_choice ? :win : :lose
  end
end
