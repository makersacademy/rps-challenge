require_relative 'player'
require_relative 'choose'

class Game

  attr_reader :p1, :comp

  def initialize(player_name)
    @p1 = Player.new(player_name)
    @comp = Player.new("Comp")
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def comp_game(comp_choose = nil)
    @p1.choose(decision)
    @comp.choose(decision)

  end

  private

  def name_to_number(decision)
    case decision
      when :rock
        return 0
      when :spock
        return 1
      when :paper
        return 2
      when :lizard
        return 3
      when :scissors
        return 4
      else
        return "Invalid"
    end
  end

  def tie_message
    "Tie!"
  end
end
