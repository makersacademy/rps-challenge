class Game
  

  def self.start_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  attr_reader :player1, :win

  def initialize(player1, player2 = 'SKYNET')
    @player1=player1
    @player2=player2
    @score_p1=0
    @score_p2=0
  end

  def winner(player)
  @win = @player1.name if player == :player1
  @win = @player2.name if player == :player2
  @win = :tie if player== :tie
  score
  end

  def display_score
    "#{@player1.name} #{@score_p1} : #{@score_p2} #{@player2.name}"
  end

private

  def score
  @score_p1 += 1 if win == @player1.name
  @score_p2 += 1 if win == @player2.name
  end

end