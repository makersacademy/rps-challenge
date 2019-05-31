# does the RPS business
class Game
  attr_reader :player1, :player2, :winner

  def initialize(player1, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new
    @winner = nil
  end

  def play(w1, w2 = @player2.random_weapon)
    if w1 == w2
      'It\'s a draw'
    elsif (w1 == 'rock' && w2 == 'scissors') || 
          (w1 == 'scissors' && w2 == 'paper') ||
          (w1 == 'paper' && w2 == 'rock')
      @winner = @player1.name
    else @winner = @player2.name
    end
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game 
  end
end
