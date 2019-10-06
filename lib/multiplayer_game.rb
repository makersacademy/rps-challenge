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
    return nil unless @player1.move && player2.move

    player, opponent = get_players(session)
    if result == :draw
      messages = @messager.messages(player, opponent, :draw) 
    else
      messages = @messager.messages(player, opponent, player_result(result, player))
    end
    check_and_reset_result
    messages
  end

  def players_ready?
    return true if @player1.ready? && player2.ready?

    false
  end

  def result
    @result ||= @battle.multiplayer_outcome(player1, player2)
  end
  
  def set_player_move(move, session)
    move = move.downcase.to_sym
    if player1.session == session
      player1.move = move
    else
      player2.move = move
    end
  end
  
  def two_players?
    return true if player1 && player2

    false
  end

  private

  def check_and_reset_result
    puts "can reset = #{@can_reset}"
    if @can_reset
      puts "resetting..."
      @result = nil
      @player1.reset_move
      @player2.reset_move
    end
    @can_reset = !@can_reset
  end

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
