require_relative 'game'

class MultiplayerGame < Game
  attr_accessor :player1_name, :player2_name

  def self.instance
    @game
  end
  
  def self.create(p1name, p1session)
    @game = self.new(name: p1name, session: p1session)
  end

  def initialize(name: player_name, session: player_session)
    @player1_name = name
    @player1_session = session
  end

  def add_second(p2name, p2session)
    @player2_name = p2name
    @player2_session = p2session
  end

  def ready?
    return true if @player1_name && @player2_name

    false
  end
end
