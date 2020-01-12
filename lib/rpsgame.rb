class RpsGame
  MOVES = ['rock', 'paper', 'scissor']
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2)
    @game = RpsGame.new(player1, player2)
  end

  def self.instance
    @game
  end

  def random_move(player)
    player.move = MOVES.sample
  end

  def winner
    return draw if draw
    case @player1.move
    when 'rock'
      @player2.move == 'scissor' ? @player1 : @player2
    when 'paper'
      @player2.move == 'rock' ? @player1 : @player2
    else
      @player2.move == 'paper' ? @player1 : @player2
    end
  end

  def draw
    return 'draw' if @player1.move == @player2.move
  end

end
