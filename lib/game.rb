require_relative "player"
require_relative "computer"

class Game

  attr_reader :player, :computer, :result

  RULES = { :rock => :scissors,
            :paper => :rock,
            :scissors => :paper }

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player, computer = Computer.new)
    @player = Player.new(player)
    @computer = computer
    @result = nil
  end

  def play
    if @computer.weapon == RULES[@player.weapon]
      @result = :win
    elsif @player.weapon == @computer.weapon
      @result = :draw
    else
      @result = :lose
    end
  end





end
