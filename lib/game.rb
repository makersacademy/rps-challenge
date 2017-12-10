require_relative 'player'
require_relative 'choice'

class Game

  attr_reader :P1, :P2, :ralph

  def initialize(player_name, player2_name = "Gerald")
    @P1 = Player.new(player_name)
    @P2 = Player.new(player2_name)
    @ralph = Player.new("Ralph")
  end

  def self.create(player_name, player2_name = 'Gerald')
    @game = Game.new(player_name, player2_name)
  end

  def self.instance
    @game
  end

  def fight_ralph(ralph_weapon = nil)
    @ralph.random_weapon
    ralph_weapon ||= @ralph.choice.weapon
    player_num = name_to_number(@P1.choice.weapon)
    ralph_num = name_to_number(ralph_weapon)
    ralph_num == player_num ? ( tie_message ) : (((ralph_num - player_num) % 5) < 3 ? (ralph_winner) : (player_winner))
  end

  private

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

  def tie_message
    "It's a tie!"
  end

  def ralph_winner
    "RALPH HAS VANQUISHED HIS PUNY FOE"
  end

  def player_winner
    "You defeated Ralph! For now..."
  end
end
