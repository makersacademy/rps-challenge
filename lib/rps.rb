class RPS
  attr_accessor :winner
  Rules = { 'paper' => 'rock', 'rock' => 'scissors', 'scissors' => 'paper' }

  def initialize(player1, player2)
    @players = [player1, player2]
    result
  end

  def result
    if @players.first == @players.last
      @winner = :draw
    elsif Rules[@players.first] == @players.last
      @winner = :player1
    else
      @winner = :player2
    end
  end
end
