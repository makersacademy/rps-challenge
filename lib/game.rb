class Game
  attr_reader :player1, :player2

  def initialize(session, human_klass, computer_klass)
    @player1 = human_klass.new(session[:name1])
    opponent_klass = session[:ai?] ? computer_klass : human_klass
    @player2 = opponent_klass.new(session[:name2])
  end
end
