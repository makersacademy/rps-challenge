require './lib/player'
require './lib/ai'

class Game
  
  attr_reader :player, :ai

  RULES = { 
          'Rock' => 'Scissors',
          'Paper' => 'Rock',
          'Scissors' => 'Paper' 
          }

  def initialize(player, ai = AI.new)
    @player = player
    @ai = ai
  end

  def result(player_weapon, ai_weapon)
    return 'win' if player_wins(player_weapon, ai_weapon)
    return 'lose' if player_loses(player_weapon, ai_weapon)
    'draw'
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  private

  def player_wins(player_weapon, ai_weapon)
    RULES[player_weapon] == ai_weapon 
  end

  def player_loses(player_weapon, ai_weapon)
    RULES[ai_weapon] == player_weapon
  end

end
