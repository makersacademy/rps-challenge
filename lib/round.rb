class Round
  attr_reader :player1, :player2

  def initialize(session, player_klass)
    @player1 = player_klass.new(session[:name1], false)
    @player2 = player_klass.new(session[:name2], session[:ai])
    @score1, @score2 = session[:score1], session[:score2]
  end
end
