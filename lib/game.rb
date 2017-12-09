require_relative 'player'
require_relative 'choice'

class Game

  attr_reader :P1, :ralph

  def initialize(player_name)
    @P1 = Player.new(player_name)
    @ralph = Player.new("Ralph")
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def fight_ralph
    @ralph.random_weapon
    player_num = name_to_number(@P1.choice.weapon)
    ralph_num = name_to_number(@ralph.choice.weapon)
    ralph_num == player_num ? ( puts "It's a tie!" ) : (((ralph_num - player_num) % 5) < 3 ? (puts "Ralph has vanquished his puny foe") : (puts "You defeated Ralph!" ))
  end

  def name_to_number(weapon)
    case weapon
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
        return "Not defined"
    end
  end
end
