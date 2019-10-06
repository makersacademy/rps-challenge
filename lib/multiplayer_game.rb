require_relative 'battle'
require_relative 'messager'

class MultiplayerGame
  attr_accessor :player1, :player2

  def self.instance
    @game
  end
  
  def self.create(player)
    @game = self.new(player)
  end

  def initialize(player, battle_class: Battle, messager_class: Messager)
    @player1 = player
    @battle = battle_class.new
    @messager = messager_class.new
  end
  
  def add_second(player)
    @player2 = player
  end

  def player_messages(session)
    return nil unless ready?
    
    player, opponent = get_players(session)
    return @messager.messages(player, opponent, :draw) if result == :draw

    @messager.messages(player, opponent, player_result(result, player))
  end

  def ready?
    if player1 && player2
      return true if player1.move && player2.move
    end

    false
  end

  def result
    @result ||= @battle.outcome(player1.move, player2.move)
  end
  
  def set_player_move(move, session)
    move = move.downcase.to_sym
    if player1.session == session
      player1.move = move
    else
      player2.move = move
    end
    ready?
  end
  
  def two_players?
    return true if player1 && player2

    false
  end

  private

  def get_players(session)
    return [player1, player2] if player1.session == session

    [player2, player1]
  end 

  def player_result(battle_result, player)
    player_result_cases = {
      player1_win: {
        @player1 => :win,
        @player2 => :lose
      },
      player2_win: {
        @player1 => :lose,
        @player2 => :win
      }
    }
    player_result_cases[battle_result][player]
  end
end
