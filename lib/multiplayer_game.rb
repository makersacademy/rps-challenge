require_relative 'game'

class MultiplayerGame < Game
  attr_accessor :player1, :player2

  def self.instance
    @game
  end
  
  def self.create(player)
    @game = self.new(player)
  end

  def initialize(player)
    @player1 = player
  end

  def add_second(player)
    @player2 = player
  end

  def ready?
    return true unless @player1.move.nil? || @player2.move.nil?

    false
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
    return true if @player1 && @player2

    false
  end
end
