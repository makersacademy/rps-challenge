class Game

  CHOICES = ["Rock", "Paper", "Scissors"]
  R, P, S = CHOICES

  attr_reader :player1, :player2, :pick1, :pick2, :result

  def initialize(player1, player2 = "The computer", player_class = Player, random_class = RandomPick)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
    @rand = random_class.new(CHOICES)
  end

  def turn(pick1, pick2 = random_pick)
    @pick1 = pick1
    @pick2 = pick2

    (@player1.won; @result = "You Won!") if win?
    (@player2.won; @result = "You Lost!") if lose?
    @result = "It's a draw!" if draw?

  end

  private

  def draw?
    @pick1 == @pick2
  end

  def win?
    (@pick1 == R && @pick2 == S) || (@pick1 == S && @pick2 == P) || (@pick1 == P && @pick2 == R)
  end

  def lose?
    (@pick1 == R && @pick2 == P) || (@pick1 == S && @pick2 == R) || (@pick1 == P && @pick2 == S)
  end

  def random_pick
    @rand.pick
  end

end
