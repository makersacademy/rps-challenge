
# in lib/player.rb
class Player
  attr_reader :name
  attr_accessor :action, :score

  def initialize(name)
    @name = name
    @action = nil
    @score = 0
  end

  def self.from_session(session)
    player = session[:player]
    player.action = session[:action]
    player
  end

  def self.simulate(session)
    computer = session[:computer]
    computer.action = %w[rock paper scissors lizard spoc].sample
    computer
  end
end
