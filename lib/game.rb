class Game

  CHOICES = ["Rock", "Paper", "Scissors"]
  R, P, S = CHOICES
  TO_WIN = { R => [S], P => [R], S => [P] }

  attr_reader :player1, :player2, :pick1, :pick2, :result, :score1, :score2

  def initialize(player1, player2 = "The computer", player_class = Player, random_class = RandomPick)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
    @score1 = 0
    @score2 = 0
    @rand = random_class.new(CHOICES)
  end

  def turn(pick1, pick2 = random_pick)
    @pick1 = pick1
    @pick2 = pick2

    won if win?
    lost if lose?
    drew if draw?

  end

  private

  def won
    @score1 += 1
    @result = :win
  end

  def lost
    @score2 += 1
    @result = :lose
  end

  def drew
    @result = :draw
  end

  def draw?
    @pick1 == @pick2
  end

  def win?
    TO_WIN[@pick1].include?(@pick2)
  end

  def lose?
    !draw? && !win?
  end

  def random_pick
    @rand.pick
  end

end
