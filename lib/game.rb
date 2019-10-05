require_relative 'ai'
require_relative 'battle'

class Game 
  attr_reader :player_name, :result, :ai_move

  def self.instance
    @game
  end
  
  def self.create(name: name)
    @game = Game.new(name: name)
  end
  
  def initialize(name: name, ai_class: AI, battle_class: Battle)
    @player_name = name
    @opponent = ai_class.new
    @battle = battle_class.new
  end

  def play(move)
    player_move = move.downcase.to_sym
    @ai_move = @opponent.get_move
    @result = @battle.outcome(player_move, @ai_move)
  end
end
