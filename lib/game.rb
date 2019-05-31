# does the RPS business
class Game
  attr_reader :player1, :player2, :winner
  GAME_OPTIONS = ['rock', 'paper', 'scissors']

  def initialize(player1, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new
    @winner = nil
  end

  def play
    w1 = @player1.weapon
    w2 = @player2.choose_weapon
    player_index = GAME_OPTIONS.index(w1)
    winning_choice = GAME_OPTIONS[player_index - 1]
    @winner = 'no-one... It\'s a draw!' if w1 == w2
    if w2 == winning_choice
      @winner = @player2.name
    else @winner = @player1.name
    end
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game 
  end
end
