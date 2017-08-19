
# in lib/player.rb
class Player
  attr_reader :name
  attr_accessor :action

  def initialize(name)
    @name = name
    @action = nil
  end

  def self.from_session(session)
    player = session[:player]
    player.action = session[:action]
    player
  end

  def self.simulate
    computer = Player.new("computer")
    computer.action = %w[rock paper scissors][rand(0..2)]
    computer
  end
end
