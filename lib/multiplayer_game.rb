require_relative 'game'

class MultiplayerGame < Game
  attr_accessor :player1_name, :player2_name

  def self.instance
    @game
  end
  
  def self.create(name: player1_name, session: session)
    @game = self.new(name: player1_name, session: session)
  end

  def initialize(name: name, session: session)
    @player1_name = name
    @player1_session = session
  end

  def add_second(name: name, session: session)
    @player2_name = name
    @player2_session = session
  end

  def ready?
    return true if @player1_name && @player2_name

    false
  end
end
