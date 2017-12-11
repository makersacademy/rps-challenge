require_relative 'player'
require_relative 'choice'

class Game

  attr_reader :p1, :p2, :ralph

  def initialize(player_name, player2_name = "Dummy")
    @p1 = Player.new(player_name)
    @p2 = Player.new(player2_name)
    @ralph = Player.new("Ralph")
  end

  def self.create(player_name, player2_name = 'Dummy')
    @game = Game.new(player_name, player2_name)
  end

  def self.instance
    @game
  end

  def fight_ralph(ralph_weapon = nil)
    @ralph.random_weapon
    ralph_weapon ||= @ralph.choice.weapon
    player_num = name_to_number(@p1.choice.weapon)
    ralph_num = name_to_number(ralph_weapon)
    ralph_num == player_num ? tie_message :
      (((player_num - ralph_num) % 5) < 3 ? p1_winner : p2_winner)
  end

  def multiplayer_fight
    player_num = name_to_number(@p1.choice.weapon)
    player2_num = name_to_number(@p2.choice.weapon)
    player_num == player2_num ? tie_message :
      (((player_num - player2_num) % 5) < 3 ? p1_winner : p2_winner)
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

  def p1_winner
    @p2.name == "Dummy" ? "You defeated Ralph! For now..." : "#{@p1.name} wins!"
  end

  def p2_winner
    @p2.name == "Dummy" ? "RALPH HAS VANQUISHED HIS PUNY FOE" : "#{@p2.name} wins!"
  end
end
