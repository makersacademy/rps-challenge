require_relative 'ai'
require_relative 'battle'

class Game 
  attr_reader :player_name, :result, :ai_move

  def self.instance
    @game
  end
  
  def self.create(player_name)
    @game = Game.new(name: player_name)
  end
  
  def initialize(name: player_name, ai_class: AI, battle_class: Battle)
    @player_name = name
    @opponent = ai_class.new
    @battle = battle_class.new
  end

  def play(move)
    player_move = move.downcase.to_sym
    @ai_move = @opponent.move
    @result = @battle.outcome(player_move, @ai_move)
  end
end
