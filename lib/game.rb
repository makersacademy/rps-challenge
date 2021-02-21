class Game

  CHOICES = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
  R, P, S, L, SP = CHOICES
  TO_WIN = { R => [S,L], P => [R,SP], S => [P,L], L => [P,SP], SP => [R,S] }

  attr_reader :result, :type

  def initialize(player1, type, player2 = "The computer", player_class = Player, random_class = RandomPick)
    set_players(player1, player2, player_class)
    set_scores
    set_game_type(type, random_class)
  end

  def turn(pick1, pick2 = random_pick)
    @pick1 = pick1
    @pick2 = pick2

    won if win?
    lost if lose?
    drew if draw?
  end

  def stats
    {
      player1: @player1.name,
      player2: @player2.name,
      pick1: @pick1,
      pick2: @pick2,
      score1: @score1,
      score2: @score2
    }
  end

  private

  def set_players(player1, player2, player_class)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
  end

  def set_scores
    @score1 = 0
    @score2 = 0
  end

  def set_game_type(type, random_class)
    @type = type
    type == 'RPS' ? @rand = random_class.new(CHOICES[0..2]) : @rand = random_class.new(CHOICES)
  end

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
