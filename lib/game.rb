# does the RPS business
class Game
  attr_reader :player1, :player2, :winner

  def initialize(player1, player2 = 'RPS-Bot', player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @winner = nil
  end

  def play
    w1 = @player1.weapon
    if @player2.weapon.nil?
      w2 = @player2.choose_weapon
    end
    if w1 == w2
      @winner = 'No-one... it\'s a draw'
    elsif (w1 == 'rock' && w2 == 'paper') ||
          (w1 == 'paper' && w2 == 'scissors') ||
          (w1 == 'scissors' && w2 == 'rock')
      @winner = @player2.name
    else @winner = @player1.name
    end
  end

  def self.create(player1, player2 = 'RPS-Bot')
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game 
  end
end
