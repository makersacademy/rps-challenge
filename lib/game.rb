require_relative 'ai'
require_relative 'battle'
require_relative 'messager'

class Game 
  attr_reader :player_name, :result, :ai_move, :player_move

  def self.instance
    @game
  end
  
  def self.create(player_name)
    @game = Game.new(name: player_name)
  end
  
  def initialize(
    name: player_name,
    ai_class: AI,
    battle_class: Battle,
    messager_class: Messager
  )
    @player_name = name
    @opponent = ai_class.new
    @battle = battle_class.new
    @messager = messager_class.new
  end

  def play(move)
    @player_move = move.downcase.to_sym
    @ai_move = @opponent.move
    @result = battle_converter(@battle.outcome(@player_move, @ai_move))
  end

  def player_messages
    return nil unless @player_move

    @messager.single_player_messages(@player_move, @ai_move, @result)
  end

  private

  def battle_converter(result)
    results = {
      player1_win: :win,
      player2_win: :lose,
      draw: :draw
    }
    results[result]
  end
end
